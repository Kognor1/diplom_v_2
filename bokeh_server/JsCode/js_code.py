from bokeh.models import CustomJS


def display_event(self, attributes=[]):
    """
    Function to build a suitable CustomJS to display the current event
    in the div model.
    """
    style = "float: left; clear: left; font-size: 13px"
    return CustomJS(
        code="""
          var attrs = %s;
          var args = [];
          for (var i = 0; i < attrs.length; i++) {
              var val = JSON.stringify(cb_obj[attrs[i]], function(key, val) {
                  return val.toFixed ? Number(val.toFixed(2)) : val;
              })
              args.push(attrs[i] + '=' + val)
          }
          var line = "<span style=%r><b>" + cb_obj.event_name + "</b>(" + args.join(", ") + ")</span>\\n";
          var text = div.text.concat(line);
          var lines = text.split("\\n")
          if (lines.length > 35)
              lines.shift();
          div.text = lines.join("\\n");
      """
        % (attributes, style)
    )


clipping_code = """
                var clip = clipping_value.data["clipping_value"][0];
                var paint = !!checkbox_button_group.active.includes(0);
                console.log(clip)
                clipping_value.change.emit();
                var clipping = !!checkbox_button_group.active.includes(1);
                var data_L = source_l.data;
                var data_copy_L = source_copy_l.data;
                var data_P = source_p.data;
                var data_copy_P = source_copy_p.data;

                var G = gain.value;

                for (var i = 0; i <  data_L['xs'].length; i++) {
                    var Trace_mass_copy_L = data_copy_L['xs'][i]
                    var Vareas_mass_copy_P = data_copy_P['xs'][i]
                    var Trace_mass_L = data_L['xs'][i]
                    var Vareas_mass_P = data_P['xs'][i]

                    if (paint && clipping || clipping && paint){
                        for (var j = 0; j <  Trace_mass_L.length; j++) {
                            Trace_mass_L[j]=((Trace_mass_copy_L[j]-c*i)*G);
                            Vareas_mass_P[j]=((Vareas_mass_copy_P[j]-c*i)*G);
                            if(Trace_mass_L[j]>=clip){
                                Trace_mass_L[j]=clip;
                            }
                            else if(Trace_mass_L[j]<-clip){
                                Trace_mass_L[j]=-clip;
                            }
                            if(Vareas_mass_P[j]>=clip){
                                Vareas_mass_P[j]=clip;
                            }
                            else if(Vareas_mass_P[j]<-clip){
                                Vareas_mass_P[j]=-clip;
                            }
                            Trace_mass_L[j]=Trace_mass_L[j]+c*i;
                            Vareas_mass_P[j]=Vareas_mass_P[j]+c*i;  
                        }

                    }

                    if (paint && !clipping || !clipping && paint){
                        for (var j = 0; j <  Trace_mass_L.length; j++) {
                            Trace_mass_L[j]=((Trace_mass_copy_L[j]-c*i)*G);
                            Vareas_mass_P[j]=((Vareas_mass_copy_P[j]-c*i)*G);
                            Trace_mass_L[j]=Trace_mass_L[j]+c*i;
                            Vareas_mass_P[j]=Vareas_mass_P[j]+c*i; 
                        }        
                    }        
                    if (!paint && clipping || clipping && !paint){
                        for (var j = 0; j <  Trace_mass_L.length; j++){
                            Trace_mass_L[j]=((Trace_mass_copy_L[j]-c*i)*G);
                            Vareas_mass_P[j] = 0+c*i;
                            if(Trace_mass_L[j]>=clip){
                                Trace_mass_L[j]=clip;
                            }
                            if(Trace_mass_L[j]<-clip){
                                Trace_mass_L[j]=-clip;
                            }
                            Trace_mass_L[j]=Trace_mass_L[j]+c*i;
                        }

                    }
                    if (!paint && !clipping || !clipping && !paint){
                        for (var j = 0; j <  Trace_mass_L.length; j++) {
                            Trace_mass_L[j]=((Trace_mass_copy_L[j]-c*i)*G);
                            Vareas_mass_P[j] = 0+c*i;
                            Trace_mass_L[j]=Trace_mass_L[j]+c*i;
                    }        
                    }     
                }
                source_l.change.emit();
                source_p.change.emit();
            """
