ª-
ç
.
Abs
x"T
y"T"
Ttype:

2	
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
-
Sqrt
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.1-0-g85c8b2a817f8¾ü#
v
sinc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *
shared_namesinc/kernel
o
sinc/kernel/Read/ReadVariableOpReadVariableOpsinc/kernel*"
_output_shapes
:@ *
dtype0
y
norm0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:­ *
shared_namenorm0/kernel
r
 norm0/kernel/Read/ReadVariableOpReadVariableOpnorm0/kernel*#
_output_shapes
:­ *
dtype0
y
norm4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:­*
shared_namenorm4/kernel
r
 norm4/kernel/Read/ReadVariableOpReadVariableOpnorm4/kernel*#
_output_shapes
:­*
dtype0

conv1d_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_34/kernel
y
$conv1d_34/kernel/Read/ReadVariableOpReadVariableOpconv1d_34/kernel*"
_output_shapes
:*
dtype0
t
conv1d_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_34/bias
m
"conv1d_34/bias/Read/ReadVariableOpReadVariableOpconv1d_34/bias*
_output_shapes
:*
dtype0

batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_27/gamma

0batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_27/gamma*
_output_shapes
:*
dtype0

batch_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_27/beta

/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_27/beta*
_output_shapes
:*
dtype0

"batch_normalization_27/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_27/moving_mean

6batch_normalization_27/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_27/moving_mean*
_output_shapes
:*
dtype0
¤
&batch_normalization_27/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_27/moving_variance

:batch_normalization_27/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_27/moving_variance*
_output_shapes
:*
dtype0

conv1d_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*!
shared_nameconv1d_35/kernel
y
$conv1d_35/kernel/Read/ReadVariableOpReadVariableOpconv1d_35/kernel*"
_output_shapes
:0*
dtype0
t
conv1d_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv1d_35/bias
m
"conv1d_35/bias/Read/ReadVariableOpReadVariableOpconv1d_35/bias*
_output_shapes
:0*
dtype0

batch_normalization_28/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*-
shared_namebatch_normalization_28/gamma

0batch_normalization_28/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_28/gamma*
_output_shapes
:0*
dtype0

batch_normalization_28/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*,
shared_namebatch_normalization_28/beta

/batch_normalization_28/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_28/beta*
_output_shapes
:0*
dtype0

"batch_normalization_28/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*3
shared_name$"batch_normalization_28/moving_mean

6batch_normalization_28/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_28/moving_mean*
_output_shapes
:0*
dtype0
¤
&batch_normalization_28/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*7
shared_name(&batch_normalization_28/moving_variance

:batch_normalization_28/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_28/moving_variance*
_output_shapes
:0*
dtype0

conv1d_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0H*!
shared_nameconv1d_36/kernel
y
$conv1d_36/kernel/Read/ReadVariableOpReadVariableOpconv1d_36/kernel*"
_output_shapes
:0H*
dtype0
t
conv1d_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*
shared_nameconv1d_36/bias
m
"conv1d_36/bias/Read/ReadVariableOpReadVariableOpconv1d_36/bias*
_output_shapes
:H*
dtype0

batch_normalization_29/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*-
shared_namebatch_normalization_29/gamma

0batch_normalization_29/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_29/gamma*
_output_shapes
:H*
dtype0

batch_normalization_29/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*,
shared_namebatch_normalization_29/beta

/batch_normalization_29/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_29/beta*
_output_shapes
:H*
dtype0

"batch_normalization_29/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*3
shared_name$"batch_normalization_29/moving_mean

6batch_normalization_29/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_29/moving_mean*
_output_shapes
:H*
dtype0
¤
&batch_normalization_29/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*7
shared_name(&batch_normalization_29/moving_variance

:batch_normalization_29/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_29/moving_variance*
_output_shapes
:H*
dtype0

conv1d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:H`*!
shared_nameconv1d_37/kernel
y
$conv1d_37/kernel/Read/ReadVariableOpReadVariableOpconv1d_37/kernel*"
_output_shapes
:H`*
dtype0
t
conv1d_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_nameconv1d_37/bias
m
"conv1d_37/bias/Read/ReadVariableOpReadVariableOpconv1d_37/bias*
_output_shapes
:`*
dtype0
v
mer4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:e*
shared_namemer4/kernel
o
mer4/kernel/Read/ReadVariableOpReadVariableOpmer4/kernel*"
_output_shapes
:e*
dtype0
v
mer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:e*
shared_namemer1/kernel
o
mer1/kernel/Read/ReadVariableOpReadVariableOpmer1/kernel*"
_output_shapes
:e*
dtype0

batch_normalization_30/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*-
shared_namebatch_normalization_30/gamma

0batch_normalization_30/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_30/gamma*
_output_shapes
:`*
dtype0

batch_normalization_30/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*,
shared_namebatch_normalization_30/beta

/batch_normalization_30/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_30/beta*
_output_shapes
:`*
dtype0

"batch_normalization_30/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*3
shared_name$"batch_normalization_30/moving_mean

6batch_normalization_30/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_30/moving_mean*
_output_shapes
:`*
dtype0
¤
&batch_normalization_30/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*7
shared_name(&batch_normalization_30/moving_variance

:batch_normalization_30/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_30/moving_variance*
_output_shapes
:`*
dtype0

conv1d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*!
shared_nameconv1d_38/kernel
z
$conv1d_38/kernel/Read/ReadVariableOpReadVariableOpconv1d_38/kernel*#
_output_shapes
:`*
dtype0
t
conv1d_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_38/bias
m
"conv1d_38/bias/Read/ReadVariableOpReadVariableOpconv1d_38/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/sinc/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *#
shared_nameAdam/sinc/kernel/m
}
&Adam/sinc/kernel/m/Read/ReadVariableOpReadVariableOpAdam/sinc/kernel/m*"
_output_shapes
:@ *
dtype0

Adam/conv1d_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv1d_34/kernel/m

+Adam/conv1d_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_34/kernel/m*"
_output_shapes
:*
dtype0

Adam/conv1d_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv1d_34/bias/m
{
)Adam/conv1d_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_34/bias/m*
_output_shapes
:*
dtype0

#Adam/batch_normalization_27/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_27/gamma/m

7Adam/batch_normalization_27/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_27/gamma/m*
_output_shapes
:*
dtype0

"Adam/batch_normalization_27/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_27/beta/m

6Adam/batch_normalization_27/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_27/beta/m*
_output_shapes
:*
dtype0

Adam/conv1d_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameAdam/conv1d_35/kernel/m

+Adam/conv1d_35/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_35/kernel/m*"
_output_shapes
:0*
dtype0

Adam/conv1d_35/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv1d_35/bias/m
{
)Adam/conv1d_35/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_35/bias/m*
_output_shapes
:0*
dtype0

#Adam/batch_normalization_28/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*4
shared_name%#Adam/batch_normalization_28/gamma/m

7Adam/batch_normalization_28/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_28/gamma/m*
_output_shapes
:0*
dtype0

"Adam/batch_normalization_28/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*3
shared_name$"Adam/batch_normalization_28/beta/m

6Adam/batch_normalization_28/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_28/beta/m*
_output_shapes
:0*
dtype0

Adam/conv1d_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0H*(
shared_nameAdam/conv1d_36/kernel/m

+Adam/conv1d_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_36/kernel/m*"
_output_shapes
:0H*
dtype0

Adam/conv1d_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*&
shared_nameAdam/conv1d_36/bias/m
{
)Adam/conv1d_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_36/bias/m*
_output_shapes
:H*
dtype0

#Adam/batch_normalization_29/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*4
shared_name%#Adam/batch_normalization_29/gamma/m

7Adam/batch_normalization_29/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_29/gamma/m*
_output_shapes
:H*
dtype0

"Adam/batch_normalization_29/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*3
shared_name$"Adam/batch_normalization_29/beta/m

6Adam/batch_normalization_29/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_29/beta/m*
_output_shapes
:H*
dtype0

Adam/conv1d_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:H`*(
shared_nameAdam/conv1d_37/kernel/m

+Adam/conv1d_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_37/kernel/m*"
_output_shapes
:H`*
dtype0

Adam/conv1d_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*&
shared_nameAdam/conv1d_37/bias/m
{
)Adam/conv1d_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_37/bias/m*
_output_shapes
:`*
dtype0

#Adam/batch_normalization_30/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#Adam/batch_normalization_30/gamma/m

7Adam/batch_normalization_30/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_30/gamma/m*
_output_shapes
:`*
dtype0

"Adam/batch_normalization_30/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*3
shared_name$"Adam/batch_normalization_30/beta/m

6Adam/batch_normalization_30/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_30/beta/m*
_output_shapes
:`*
dtype0

Adam/conv1d_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*(
shared_nameAdam/conv1d_38/kernel/m

+Adam/conv1d_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_38/kernel/m*#
_output_shapes
:`*
dtype0

Adam/conv1d_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv1d_38/bias/m
{
)Adam/conv1d_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_38/bias/m*
_output_shapes
:*
dtype0

Adam/sinc/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *#
shared_nameAdam/sinc/kernel/v
}
&Adam/sinc/kernel/v/Read/ReadVariableOpReadVariableOpAdam/sinc/kernel/v*"
_output_shapes
:@ *
dtype0

Adam/conv1d_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv1d_34/kernel/v

+Adam/conv1d_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_34/kernel/v*"
_output_shapes
:*
dtype0

Adam/conv1d_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv1d_34/bias/v
{
)Adam/conv1d_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_34/bias/v*
_output_shapes
:*
dtype0

#Adam/batch_normalization_27/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_27/gamma/v

7Adam/batch_normalization_27/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_27/gamma/v*
_output_shapes
:*
dtype0

"Adam/batch_normalization_27/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_27/beta/v

6Adam/batch_normalization_27/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_27/beta/v*
_output_shapes
:*
dtype0

Adam/conv1d_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameAdam/conv1d_35/kernel/v

+Adam/conv1d_35/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_35/kernel/v*"
_output_shapes
:0*
dtype0

Adam/conv1d_35/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*&
shared_nameAdam/conv1d_35/bias/v
{
)Adam/conv1d_35/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_35/bias/v*
_output_shapes
:0*
dtype0

#Adam/batch_normalization_28/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*4
shared_name%#Adam/batch_normalization_28/gamma/v

7Adam/batch_normalization_28/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_28/gamma/v*
_output_shapes
:0*
dtype0

"Adam/batch_normalization_28/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*3
shared_name$"Adam/batch_normalization_28/beta/v

6Adam/batch_normalization_28/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_28/beta/v*
_output_shapes
:0*
dtype0

Adam/conv1d_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0H*(
shared_nameAdam/conv1d_36/kernel/v

+Adam/conv1d_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_36/kernel/v*"
_output_shapes
:0H*
dtype0

Adam/conv1d_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*&
shared_nameAdam/conv1d_36/bias/v
{
)Adam/conv1d_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_36/bias/v*
_output_shapes
:H*
dtype0

#Adam/batch_normalization_29/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*4
shared_name%#Adam/batch_normalization_29/gamma/v

7Adam/batch_normalization_29/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_29/gamma/v*
_output_shapes
:H*
dtype0

"Adam/batch_normalization_29/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*3
shared_name$"Adam/batch_normalization_29/beta/v

6Adam/batch_normalization_29/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_29/beta/v*
_output_shapes
:H*
dtype0

Adam/conv1d_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:H`*(
shared_nameAdam/conv1d_37/kernel/v

+Adam/conv1d_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_37/kernel/v*"
_output_shapes
:H`*
dtype0

Adam/conv1d_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*&
shared_nameAdam/conv1d_37/bias/v
{
)Adam/conv1d_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_37/bias/v*
_output_shapes
:`*
dtype0

#Adam/batch_normalization_30/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*4
shared_name%#Adam/batch_normalization_30/gamma/v

7Adam/batch_normalization_30/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_30/gamma/v*
_output_shapes
:`*
dtype0

"Adam/batch_normalization_30/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*3
shared_name$"Adam/batch_normalization_30/beta/v

6Adam/batch_normalization_30/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_30/beta/v*
_output_shapes
:`*
dtype0

Adam/conv1d_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*(
shared_nameAdam/conv1d_38/kernel/v

+Adam/conv1d_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_38/kernel/v*#
_output_shapes
:`*
dtype0

Adam/conv1d_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv1d_38/bias/v
{
)Adam/conv1d_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_38/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
æ¼
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0* ¼
value¼B¼ B¼

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-3
layer-11
layer-12
layer_with_weights-4
layer-13
layer-14
layer_with_weights-5
layer-15
layer-16
layer_with_weights-6
layer-17
layer-18
layer_with_weights-7
layer-19
layer-20
layer_with_weights-8
layer-21
layer-22
layer-23
layer-24
layer_with_weights-9
layer-25
layer_with_weights-10
layer-26
layer_with_weights-11
layer-27
layer-28
layer-29
layer-30
 layer_with_weights-12
 layer-31
!layer-32
"layer-33
#layer-34
$layer_with_weights-13
$layer-35
%layer-36
&layer-37
'layer-38
(layer-39
)layer-40
*	optimizer
+trainable_variables
,regularization_losses
-	variables
.	keras_api
/
signatures
 
^

0kernel
1trainable_variables
2regularization_losses
3	variables
4	keras_api
^

5kernel
6trainable_variables
7regularization_losses
8	variables
9	keras_api
R
:trainable_variables
;regularization_losses
<	variables
=	keras_api
R
>trainable_variables
?regularization_losses
@	variables
A	keras_api
R
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
^

Fkernel
Gtrainable_variables
Hregularization_losses
I	variables
J	keras_api
R
Ktrainable_variables
Lregularization_losses
M	variables
N	keras_api
R
Otrainable_variables
Pregularization_losses
Q	variables
R	keras_api
R
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
R
Wtrainable_variables
Xregularization_losses
Y	variables
Z	keras_api
h

[kernel
\bias
]trainable_variables
^regularization_losses
_	variables
`	keras_api
R
atrainable_variables
bregularization_losses
c	variables
d	keras_api

eaxis
	fgamma
gbeta
hmoving_mean
imoving_variance
jtrainable_variables
kregularization_losses
l	variables
m	keras_api
R
ntrainable_variables
oregularization_losses
p	variables
q	keras_api
h

rkernel
sbias
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
R
xtrainable_variables
yregularization_losses
z	variables
{	keras_api

|axis
	}gamma
~beta
moving_mean
moving_variance
trainable_variables
regularization_losses
	variables
	keras_api
V
trainable_variables
regularization_losses
	variables
	keras_api
n
kernel
	bias
trainable_variables
regularization_losses
	variables
	keras_api
V
trainable_variables
regularization_losses
	variables
	keras_api
 
	axis

gamma
	beta
moving_mean
moving_variance
trainable_variables
regularization_losses
	variables
	keras_api
V
trainable_variables
regularization_losses
	variables
	keras_api
V
 trainable_variables
¡regularization_losses
¢	variables
£	keras_api
V
¤trainable_variables
¥regularization_losses
¦	variables
§	keras_api
n
¨kernel
	©bias
ªtrainable_variables
«regularization_losses
¬	variables
­	keras_api
c
®kernel
¯trainable_variables
°regularization_losses
±	variables
²	keras_api
c
³kernel
´trainable_variables
µregularization_losses
¶	variables
·	keras_api
V
¸trainable_variables
¹regularization_losses
º	variables
»	keras_api
V
¼trainable_variables
½regularization_losses
¾	variables
¿	keras_api
V
Àtrainable_variables
Áregularization_losses
Â	variables
Ã	keras_api
 
	Äaxis

Ågamma
	Æbeta
Çmoving_mean
Èmoving_variance
Étrainable_variables
Êregularization_losses
Ë	variables
Ì	keras_api
V
Ítrainable_variables
Îregularization_losses
Ï	variables
Ð	keras_api
V
Ñtrainable_variables
Òregularization_losses
Ó	variables
Ô	keras_api
V
Õtrainable_variables
Öregularization_losses
×	variables
Ø	keras_api
n
Ùkernel
	Úbias
Ûtrainable_variables
Üregularization_losses
Ý	variables
Þ	keras_api
V
ßtrainable_variables
àregularization_losses
á	variables
â	keras_api
V
ãtrainable_variables
äregularization_losses
å	variables
æ	keras_api
V
çtrainable_variables
èregularization_losses
é	variables
ê	keras_api
V
ëtrainable_variables
ìregularization_losses
í	variables
î	keras_api
V
ïtrainable_variables
ðregularization_losses
ñ	variables
ò	keras_api
Õ
	óiter
ôbeta_1
õbeta_2

ödecay
÷learning_rate0mÐ[mÑ\mÒfmÓgmÔrmÕsmÖ}m×~mØ	mÙ	mÚ	mÛ	mÜ	¨mÝ	©mÞ	Åmß	Æmà	Ùmá	Úmâ0vã[vä\våfvægvçrvèsvé}vê~vë	vì	ví	vî	vï	¨vð	©vñ	Åvò	Ævó	Ùvô	Úvõ

00
[1
\2
f3
g4
r5
s6
}7
~8
9
10
11
12
¨13
©14
Å15
Æ16
Ù17
Ú18
 
ÿ
00
51
F2
[3
\4
f5
g6
h7
i8
r9
s10
}11
~12
13
14
15
16
17
18
19
20
¨21
©22
®23
³24
Å25
Æ26
Ç27
È28
Ù29
Ú30
²
ømetrics
ùlayers
únon_trainable_variables
+trainable_variables
 ûlayer_regularization_losses
,regularization_losses
ülayer_metrics
-	variables
 
WU
VARIABLE_VALUEsinc/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE

00
 

00
²
ýmetrics
þlayers
ÿnon_trainable_variables
1trainable_variables
 layer_regularization_losses
2regularization_losses
layer_metrics
3	variables
XV
VARIABLE_VALUEnorm0/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

50
²
metrics
layers
non_trainable_variables
6trainable_variables
 layer_regularization_losses
7regularization_losses
layer_metrics
8	variables
 
 
 
²
metrics
layers
non_trainable_variables
:trainable_variables
 layer_regularization_losses
;regularization_losses
layer_metrics
<	variables
 
 
 
²
metrics
layers
non_trainable_variables
>trainable_variables
 layer_regularization_losses
?regularization_losses
layer_metrics
@	variables
 
 
 
²
metrics
layers
non_trainable_variables
Btrainable_variables
 layer_regularization_losses
Cregularization_losses
layer_metrics
D	variables
XV
VARIABLE_VALUEnorm4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

F0
²
metrics
layers
non_trainable_variables
Gtrainable_variables
 layer_regularization_losses
Hregularization_losses
layer_metrics
I	variables
 
 
 
²
metrics
layers
non_trainable_variables
Ktrainable_variables
 layer_regularization_losses
Lregularization_losses
layer_metrics
M	variables
 
 
 
²
 metrics
¡layers
¢non_trainable_variables
Otrainable_variables
 £layer_regularization_losses
Pregularization_losses
¤layer_metrics
Q	variables
 
 
 
²
¥metrics
¦layers
§non_trainable_variables
Strainable_variables
 ¨layer_regularization_losses
Tregularization_losses
©layer_metrics
U	variables
 
 
 
²
ªmetrics
«layers
¬non_trainable_variables
Wtrainable_variables
 ­layer_regularization_losses
Xregularization_losses
®layer_metrics
Y	variables
\Z
VARIABLE_VALUEconv1d_34/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv1d_34/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

[0
\1
 

[0
\1
²
¯metrics
°layers
±non_trainable_variables
]trainable_variables
 ²layer_regularization_losses
^regularization_losses
³layer_metrics
_	variables
 
 
 
²
´metrics
µlayers
¶non_trainable_variables
atrainable_variables
 ·layer_regularization_losses
bregularization_losses
¸layer_metrics
c	variables
 
ge
VARIABLE_VALUEbatch_normalization_27/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_27/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_27/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_27/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

f0
g1
 

f0
g1
h2
i3
²
¹metrics
ºlayers
»non_trainable_variables
jtrainable_variables
 ¼layer_regularization_losses
kregularization_losses
½layer_metrics
l	variables
 
 
 
²
¾metrics
¿layers
Ànon_trainable_variables
ntrainable_variables
 Álayer_regularization_losses
oregularization_losses
Âlayer_metrics
p	variables
\Z
VARIABLE_VALUEconv1d_35/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv1d_35/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

r0
s1
 

r0
s1
²
Ãmetrics
Älayers
Ånon_trainable_variables
ttrainable_variables
 Ælayer_regularization_losses
uregularization_losses
Çlayer_metrics
v	variables
 
 
 
²
Èmetrics
Élayers
Ênon_trainable_variables
xtrainable_variables
 Ëlayer_regularization_losses
yregularization_losses
Ìlayer_metrics
z	variables
 
ge
VARIABLE_VALUEbatch_normalization_28/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_28/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_28/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_28/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

}0
~1
 

}0
~1
2
3
µ
Ímetrics
Îlayers
Ïnon_trainable_variables
trainable_variables
 Ðlayer_regularization_losses
regularization_losses
Ñlayer_metrics
	variables
 
 
 
µ
Òmetrics
Ólayers
Ônon_trainable_variables
trainable_variables
 Õlayer_regularization_losses
regularization_losses
Ölayer_metrics
	variables
\Z
VARIABLE_VALUEconv1d_36/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv1d_36/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
µ
×metrics
Ølayers
Ùnon_trainable_variables
trainable_variables
 Úlayer_regularization_losses
regularization_losses
Ûlayer_metrics
	variables
 
 
 
µ
Ümetrics
Ýlayers
Þnon_trainable_variables
trainable_variables
 ßlayer_regularization_losses
regularization_losses
àlayer_metrics
	variables
 
ge
VARIABLE_VALUEbatch_normalization_29/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_29/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_29/moving_mean;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_29/moving_variance?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
 
 
0
1
2
3
µ
ámetrics
âlayers
ãnon_trainable_variables
trainable_variables
 älayer_regularization_losses
regularization_losses
ålayer_metrics
	variables
 
 
 
µ
æmetrics
çlayers
ènon_trainable_variables
trainable_variables
 élayer_regularization_losses
regularization_losses
êlayer_metrics
	variables
 
 
 
µ
ëmetrics
ìlayers
ínon_trainable_variables
 trainable_variables
 îlayer_regularization_losses
¡regularization_losses
ïlayer_metrics
¢	variables
 
 
 
µ
ðmetrics
ñlayers
ònon_trainable_variables
¤trainable_variables
 ólayer_regularization_losses
¥regularization_losses
ôlayer_metrics
¦	variables
\Z
VARIABLE_VALUEconv1d_37/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv1d_37/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

¨0
©1
 

¨0
©1
µ
õmetrics
ölayers
÷non_trainable_variables
ªtrainable_variables
 ølayer_regularization_losses
«regularization_losses
ùlayer_metrics
¬	variables
XV
VARIABLE_VALUEmer4/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

®0
µ
úmetrics
ûlayers
ünon_trainable_variables
¯trainable_variables
 ýlayer_regularization_losses
°regularization_losses
þlayer_metrics
±	variables
XV
VARIABLE_VALUEmer1/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
 
 

³0
µ
ÿmetrics
layers
non_trainable_variables
´trainable_variables
 layer_regularization_losses
µregularization_losses
layer_metrics
¶	variables
 
 
 
µ
metrics
layers
non_trainable_variables
¸trainable_variables
 layer_regularization_losses
¹regularization_losses
layer_metrics
º	variables
 
 
 
µ
metrics
layers
non_trainable_variables
¼trainable_variables
 layer_regularization_losses
½regularization_losses
layer_metrics
¾	variables
 
 
 
µ
metrics
layers
non_trainable_variables
Àtrainable_variables
 layer_regularization_losses
Áregularization_losses
layer_metrics
Â	variables
 
hf
VARIABLE_VALUEbatch_normalization_30/gamma6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_30/beta5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_30/moving_mean<layer_with_weights-12/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_30/moving_variance@layer_with_weights-12/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

Å0
Æ1
 
 
Å0
Æ1
Ç2
È3
µ
metrics
layers
non_trainable_variables
Étrainable_variables
 layer_regularization_losses
Êregularization_losses
layer_metrics
Ë	variables
 
 
 
µ
metrics
layers
non_trainable_variables
Ítrainable_variables
 layer_regularization_losses
Îregularization_losses
layer_metrics
Ï	variables
 
 
 
µ
metrics
layers
non_trainable_variables
Ñtrainable_variables
  layer_regularization_losses
Òregularization_losses
¡layer_metrics
Ó	variables
 
 
 
µ
¢metrics
£layers
¤non_trainable_variables
Õtrainable_variables
 ¥layer_regularization_losses
Öregularization_losses
¦layer_metrics
×	variables
][
VARIABLE_VALUEconv1d_38/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv1d_38/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE

Ù0
Ú1
 

Ù0
Ú1
µ
§metrics
¨layers
©non_trainable_variables
Ûtrainable_variables
 ªlayer_regularization_losses
Üregularization_losses
«layer_metrics
Ý	variables
 
 
 
µ
¬metrics
­layers
®non_trainable_variables
ßtrainable_variables
 ¯layer_regularization_losses
àregularization_losses
°layer_metrics
á	variables
 
 
 
µ
±metrics
²layers
³non_trainable_variables
ãtrainable_variables
 ´layer_regularization_losses
äregularization_losses
µlayer_metrics
å	variables
 
 
 
µ
¶metrics
·layers
¸non_trainable_variables
çtrainable_variables
 ¹layer_regularization_losses
èregularization_losses
ºlayer_metrics
é	variables
 
 
 
µ
»metrics
¼layers
½non_trainable_variables
ëtrainable_variables
 ¾layer_regularization_losses
ìregularization_losses
¿layer_metrics
í	variables
 
 
 
µ
Àmetrics
Álayers
Ânon_trainable_variables
ïtrainable_variables
 Ãlayer_regularization_losses
ðregularization_losses
Älayer_metrics
ñ	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

Å0
Æ1
¾
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
]
50
F1
h2
i3
4
5
6
7
®8
³9
Ç10
È11
 
 
 
 
 
 
 
 
 

50
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

F0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

h0
i1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

®0
 
 
 
 

³0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

Ç0
È1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Çtotal

Ècount
É	variables
Ê	keras_api
I

Ëtotal

Ìcount
Í
_fn_kwargs
Î	variables
Ï	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Ç0
È1

É	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ë0
Ì1

Î	variables
zx
VARIABLE_VALUEAdam/sinc/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_34/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_34/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_27/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_27/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_35/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_35/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_28/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_28/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_36/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_36/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_29/gamma/mQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_29/beta/mPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_37/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_37/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_30/gamma/mRlayer_with_weights-12/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_30/beta/mQlayer_with_weights-12/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv1d_38/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv1d_38/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/sinc/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_34/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_34/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_27/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_27/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_35/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_35/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_28/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_28/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_36/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_36/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_29/gamma/vQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_29/beta/vPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_37/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_37/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_30/gamma/vRlayer_with_weights-12/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_30/beta/vQlayer_with_weights-12/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/conv1d_38/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv1d_38/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_8Placeholder*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*)
shape :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_8sinc/kernelnorm0/kernelnorm4/kernelconv1d_34/kernelconv1d_34/bias&batch_normalization_27/moving_variancebatch_normalization_27/gamma"batch_normalization_27/moving_meanbatch_normalization_27/betaconv1d_35/kernelconv1d_35/bias&batch_normalization_28/moving_variancebatch_normalization_28/gamma"batch_normalization_28/moving_meanbatch_normalization_28/betaconv1d_36/kernelconv1d_36/bias&batch_normalization_29/moving_variancebatch_normalization_29/gamma"batch_normalization_29/moving_meanbatch_normalization_29/betamer1/kernelmer4/kernelconv1d_37/kernelconv1d_37/bias&batch_normalization_30/moving_variancebatch_normalization_30/gamma"batch_normalization_30/moving_meanbatch_normalization_30/betaconv1d_38/kernelconv1d_38/bias*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*A
_read_only_resource_inputs#
!	
*2
config_proto" 

CPU

GPU2 *0J 8 *-
f(R&
$__inference_signature_wrapper_176914
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ä
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamesinc/kernel/Read/ReadVariableOp norm0/kernel/Read/ReadVariableOp norm4/kernel/Read/ReadVariableOp$conv1d_34/kernel/Read/ReadVariableOp"conv1d_34/bias/Read/ReadVariableOp0batch_normalization_27/gamma/Read/ReadVariableOp/batch_normalization_27/beta/Read/ReadVariableOp6batch_normalization_27/moving_mean/Read/ReadVariableOp:batch_normalization_27/moving_variance/Read/ReadVariableOp$conv1d_35/kernel/Read/ReadVariableOp"conv1d_35/bias/Read/ReadVariableOp0batch_normalization_28/gamma/Read/ReadVariableOp/batch_normalization_28/beta/Read/ReadVariableOp6batch_normalization_28/moving_mean/Read/ReadVariableOp:batch_normalization_28/moving_variance/Read/ReadVariableOp$conv1d_36/kernel/Read/ReadVariableOp"conv1d_36/bias/Read/ReadVariableOp0batch_normalization_29/gamma/Read/ReadVariableOp/batch_normalization_29/beta/Read/ReadVariableOp6batch_normalization_29/moving_mean/Read/ReadVariableOp:batch_normalization_29/moving_variance/Read/ReadVariableOp$conv1d_37/kernel/Read/ReadVariableOp"conv1d_37/bias/Read/ReadVariableOpmer4/kernel/Read/ReadVariableOpmer1/kernel/Read/ReadVariableOp0batch_normalization_30/gamma/Read/ReadVariableOp/batch_normalization_30/beta/Read/ReadVariableOp6batch_normalization_30/moving_mean/Read/ReadVariableOp:batch_normalization_30/moving_variance/Read/ReadVariableOp$conv1d_38/kernel/Read/ReadVariableOp"conv1d_38/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp&Adam/sinc/kernel/m/Read/ReadVariableOp+Adam/conv1d_34/kernel/m/Read/ReadVariableOp)Adam/conv1d_34/bias/m/Read/ReadVariableOp7Adam/batch_normalization_27/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_27/beta/m/Read/ReadVariableOp+Adam/conv1d_35/kernel/m/Read/ReadVariableOp)Adam/conv1d_35/bias/m/Read/ReadVariableOp7Adam/batch_normalization_28/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_28/beta/m/Read/ReadVariableOp+Adam/conv1d_36/kernel/m/Read/ReadVariableOp)Adam/conv1d_36/bias/m/Read/ReadVariableOp7Adam/batch_normalization_29/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_29/beta/m/Read/ReadVariableOp+Adam/conv1d_37/kernel/m/Read/ReadVariableOp)Adam/conv1d_37/bias/m/Read/ReadVariableOp7Adam/batch_normalization_30/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_30/beta/m/Read/ReadVariableOp+Adam/conv1d_38/kernel/m/Read/ReadVariableOp)Adam/conv1d_38/bias/m/Read/ReadVariableOp&Adam/sinc/kernel/v/Read/ReadVariableOp+Adam/conv1d_34/kernel/v/Read/ReadVariableOp)Adam/conv1d_34/bias/v/Read/ReadVariableOp7Adam/batch_normalization_27/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_27/beta/v/Read/ReadVariableOp+Adam/conv1d_35/kernel/v/Read/ReadVariableOp)Adam/conv1d_35/bias/v/Read/ReadVariableOp7Adam/batch_normalization_28/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_28/beta/v/Read/ReadVariableOp+Adam/conv1d_36/kernel/v/Read/ReadVariableOp)Adam/conv1d_36/bias/v/Read/ReadVariableOp7Adam/batch_normalization_29/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_29/beta/v/Read/ReadVariableOp+Adam/conv1d_37/kernel/v/Read/ReadVariableOp)Adam/conv1d_37/bias/v/Read/ReadVariableOp7Adam/batch_normalization_30/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_30/beta/v/Read/ReadVariableOp+Adam/conv1d_38/kernel/v/Read/ReadVariableOp)Adam/conv1d_38/bias/v/Read/ReadVariableOpConst*[
TinT
R2P	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *(
f#R!
__inference__traced_save_178897
§
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamesinc/kernelnorm0/kernelnorm4/kernelconv1d_34/kernelconv1d_34/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_varianceconv1d_35/kernelconv1d_35/biasbatch_normalization_28/gammabatch_normalization_28/beta"batch_normalization_28/moving_mean&batch_normalization_28/moving_varianceconv1d_36/kernelconv1d_36/biasbatch_normalization_29/gammabatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_varianceconv1d_37/kernelconv1d_37/biasmer4/kernelmer1/kernelbatch_normalization_30/gammabatch_normalization_30/beta"batch_normalization_30/moving_mean&batch_normalization_30/moving_varianceconv1d_38/kernelconv1d_38/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/sinc/kernel/mAdam/conv1d_34/kernel/mAdam/conv1d_34/bias/m#Adam/batch_normalization_27/gamma/m"Adam/batch_normalization_27/beta/mAdam/conv1d_35/kernel/mAdam/conv1d_35/bias/m#Adam/batch_normalization_28/gamma/m"Adam/batch_normalization_28/beta/mAdam/conv1d_36/kernel/mAdam/conv1d_36/bias/m#Adam/batch_normalization_29/gamma/m"Adam/batch_normalization_29/beta/mAdam/conv1d_37/kernel/mAdam/conv1d_37/bias/m#Adam/batch_normalization_30/gamma/m"Adam/batch_normalization_30/beta/mAdam/conv1d_38/kernel/mAdam/conv1d_38/bias/mAdam/sinc/kernel/vAdam/conv1d_34/kernel/vAdam/conv1d_34/bias/v#Adam/batch_normalization_27/gamma/v"Adam/batch_normalization_27/beta/vAdam/conv1d_35/kernel/vAdam/conv1d_35/bias/v#Adam/batch_normalization_28/gamma/v"Adam/batch_normalization_28/beta/vAdam/conv1d_36/kernel/vAdam/conv1d_36/bias/v#Adam/batch_normalization_29/gamma/v"Adam/batch_normalization_29/beta/vAdam/conv1d_37/kernel/vAdam/conv1d_37/bias/v#Adam/batch_normalization_30/gamma/v"Adam/batch_normalization_30/beta/vAdam/conv1d_38/kernel/vAdam/conv1d_38/bias/v*Z
TinS
Q2O*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *+
f&R$
"__inference__traced_restore_179141Þ 
Ï
G
+__inference_dropout_26_layer_call_fn_178232

inputs
identityÖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_1759742
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
ý
`
&__inference_mer10_layer_call_fn_178628
inputs_0
inputs_1
inputs_2
identityé
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_mer10_layer_call_and_return_conditional_losses_1763582
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/2
ä
R
&__inference_norm6_layer_call_fn_177747
inputs_0
inputs_1
identityÞ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm6_layer_call_and_return_conditional_losses_1755612
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
Û
d
+__inference_dropout_25_layer_call_fn_178072

inputs
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_1758202
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ022
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
ë
e
I__inference_activation_34_layer_call_and_return_conditional_losses_175656

inputs
identity[
ReluReluinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relus
IdentityIdentityRelu:activations:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
ø
E__inference_conv1d_35_layer_call_and_return_conditional_losses_175744

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:02
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02	
BiasAdd¯
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô
ø
E__inference_conv1d_38_layer_call_and_return_conditional_losses_178542

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
conv1d/ExpandDims¹
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¸
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAdd¯
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
÷
\
@__inference_mer3_layer_call_and_return_conditional_losses_175944

inputs
identityj
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis
	ReverseV2	ReverseV2inputsReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2s
IdentityIdentityReverseV2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
k
A__inference_norm3_layer_call_and_return_conditional_losses_175479

inputs
inputs_1
identityb
mulMulinputsinputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
ø
E__inference_conv1d_37_layer_call_and_return_conditional_losses_176054

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:H`*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:H`2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2	
BiasAdd¯
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
Ò
ì
E__inference_conv_segm_layer_call_and_return_conditional_losses_177232

inputs4
0sinc_conv1d_expanddims_1_readvariableop_resource5
1norm0_conv1d_expanddims_1_readvariableop_resource5
1norm4_conv1d_expanddims_1_readvariableop_resource9
5conv1d_34_conv1d_expanddims_1_readvariableop_resource-
)conv1d_34_biasadd_readvariableop_resource1
-batch_normalization_27_assignmovingavg_1769853
/batch_normalization_27_assignmovingavg_1_176991@
<batch_normalization_27_batchnorm_mul_readvariableop_resource<
8batch_normalization_27_batchnorm_readvariableop_resource9
5conv1d_35_conv1d_expanddims_1_readvariableop_resource-
)conv1d_35_biasadd_readvariableop_resource1
-batch_normalization_28_assignmovingavg_1770373
/batch_normalization_28_assignmovingavg_1_177043@
<batch_normalization_28_batchnorm_mul_readvariableop_resource<
8batch_normalization_28_batchnorm_readvariableop_resource9
5conv1d_36_conv1d_expanddims_1_readvariableop_resource-
)conv1d_36_biasadd_readvariableop_resource1
-batch_normalization_29_assignmovingavg_1770903
/batch_normalization_29_assignmovingavg_1_177096@
<batch_normalization_29_batchnorm_mul_readvariableop_resource<
8batch_normalization_29_batchnorm_readvariableop_resource4
0mer1_conv1d_expanddims_1_readvariableop_resource4
0mer4_conv1d_expanddims_1_readvariableop_resource9
5conv1d_37_conv1d_expanddims_1_readvariableop_resource-
)conv1d_37_biasadd_readvariableop_resource1
-batch_normalization_30_assignmovingavg_1771733
/batch_normalization_30_assignmovingavg_1_177179@
<batch_normalization_30_batchnorm_mul_readvariableop_resource<
8batch_normalization_30_batchnorm_readvariableop_resource9
5conv1d_38_conv1d_expanddims_1_readvariableop_resource-
)conv1d_38_biasadd_readvariableop_resource
identity¢:batch_normalization_27/AssignMovingAvg/AssignSubVariableOp¢5batch_normalization_27/AssignMovingAvg/ReadVariableOp¢<batch_normalization_27/AssignMovingAvg_1/AssignSubVariableOp¢7batch_normalization_27/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_27/batchnorm/ReadVariableOp¢3batch_normalization_27/batchnorm/mul/ReadVariableOp¢:batch_normalization_28/AssignMovingAvg/AssignSubVariableOp¢5batch_normalization_28/AssignMovingAvg/ReadVariableOp¢<batch_normalization_28/AssignMovingAvg_1/AssignSubVariableOp¢7batch_normalization_28/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_28/batchnorm/ReadVariableOp¢3batch_normalization_28/batchnorm/mul/ReadVariableOp¢:batch_normalization_29/AssignMovingAvg/AssignSubVariableOp¢5batch_normalization_29/AssignMovingAvg/ReadVariableOp¢<batch_normalization_29/AssignMovingAvg_1/AssignSubVariableOp¢7batch_normalization_29/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_29/batchnorm/ReadVariableOp¢3batch_normalization_29/batchnorm/mul/ReadVariableOp¢:batch_normalization_30/AssignMovingAvg/AssignSubVariableOp¢5batch_normalization_30/AssignMovingAvg/ReadVariableOp¢<batch_normalization_30/AssignMovingAvg_1/AssignSubVariableOp¢7batch_normalization_30/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_30/batchnorm/ReadVariableOp¢3batch_normalization_30/batchnorm/mul/ReadVariableOp¢ conv1d_34/BiasAdd/ReadVariableOp¢,conv1d_34/conv1d/ExpandDims_1/ReadVariableOp¢ conv1d_35/BiasAdd/ReadVariableOp¢,conv1d_35/conv1d/ExpandDims_1/ReadVariableOp¢ conv1d_36/BiasAdd/ReadVariableOp¢,conv1d_36/conv1d/ExpandDims_1/ReadVariableOp¢ conv1d_37/BiasAdd/ReadVariableOp¢,conv1d_37/conv1d/ExpandDims_1/ReadVariableOp¢ conv1d_38/BiasAdd/ReadVariableOp¢,conv1d_38/conv1d/ExpandDims_1/ReadVariableOp¢'mer1/conv1d/ExpandDims_1/ReadVariableOp¢'mer4/conv1d/ExpandDims_1/ReadVariableOp¢(norm0/conv1d/ExpandDims_1/ReadVariableOp¢(norm4/conv1d/ExpandDims_1/ReadVariableOp¢'sinc/conv1d/ExpandDims_1/ReadVariableOp
sinc/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
sinc/conv1d/ExpandDims/dim®
sinc/conv1d/ExpandDims
ExpandDimsinputs#sinc/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sinc/conv1d/ExpandDimsÇ
'sinc/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0sinc_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02)
'sinc/conv1d/ExpandDims_1/ReadVariableOp~
sinc/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
sinc/conv1d/ExpandDims_1/dimË
sinc/conv1d/ExpandDims_1
ExpandDims/sinc/conv1d/ExpandDims_1/ReadVariableOp:value:0%sinc/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
sinc/conv1d/ExpandDims_1Ó
sinc/conv1dConv2Dsinc/conv1d/ExpandDims:output:0!sinc/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
sinc/conv1dª
sinc/conv1d/SqueezeSqueezesinc/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
sinc/conv1d/Squeeze
norm0/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
norm0/conv1d/ExpandDims/dimÇ
norm0/conv1d/ExpandDims
ExpandDimssinc/conv1d/Squeeze:output:0$norm0/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
norm0/conv1d/ExpandDimsË
(norm0/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp1norm0_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:­ *
dtype02*
(norm0/conv1d/ExpandDims_1/ReadVariableOp
norm0/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
norm0/conv1d/ExpandDims_1/dimÐ
norm0/conv1d/ExpandDims_1
ExpandDims0norm0/conv1d/ExpandDims_1/ReadVariableOp:value:0&norm0/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:­ 2
norm0/conv1d/ExpandDims_1×
norm0/conv1dConv2D norm0/conv1d/ExpandDims:output:0"norm0/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
norm0/conv1d­
norm0/conv1d/SqueezeSqueezenorm0/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
norm0/conv1d/Squeeze_
norm1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
norm1/mul/y
	norm1/mulMulnorm0/conv1d/Squeeze:output:0norm1/mul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm1/muls
	norm2/subSubinputsnorm1/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm2/subz
	norm3/mulMulnorm2/sub:z:0norm2/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm3/mul
norm4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
norm4/conv1d/ExpandDims/dim¸
norm4/conv1d/ExpandDims
ExpandDimsnorm3/mul:z:0$norm4/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
norm4/conv1d/ExpandDimsË
(norm4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp1norm4_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:­*
dtype02*
(norm4/conv1d/ExpandDims_1/ReadVariableOp
norm4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
norm4/conv1d/ExpandDims_1/dimÐ
norm4/conv1d/ExpandDims_1
ExpandDims0norm4/conv1d/ExpandDims_1/ReadVariableOp:value:0&norm4/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:­2
norm4/conv1d/ExpandDims_1×
norm4/conv1dConv2D norm4/conv1d/ExpandDims:output:0"norm4/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
norm4/conv1d­
norm4/conv1d/SqueezeSqueezenorm4/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
norm4/conv1d/Squeeze_
norm5/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
norm5/mul/y
	norm5/mulMulnorm4/conv1d/Squeeze:output:0norm5/mul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm5/mul_
norm5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
norm5/Constc
norm5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  2
norm5/Const_1«
norm5/clip_by_value/MinimumMinimumnorm5/mul:z:0norm5/Const_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
norm5/clip_by_value/Minimum«
norm5/clip_by_valueMaximumnorm5/clip_by_value/Minimum:z:0norm5/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
norm5/clip_by_valuex

norm5/SqrtSqrtnorm5/clip_by_value:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

norm5/Sqrt_
norm5/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
norm5/add/y
	norm5/addAddV2norm5/Sqrt:y:0norm5/add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm5/addg
norm5/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
norm5/truediv/x
norm5/truedivRealDivnorm5/truediv/x:output:0norm5/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
norm5/truedivw
	norm6/mulMulinputsnorm5/truediv:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm6/mulk
	norm7/AbsAbsnorm6/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm7/Abs|
norm7/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
norm7/Max/reduction_indices
	norm7/MaxMaxnorm7/Abs:y:0$norm7/Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
	norm7/Max_
norm7/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
norm7/add/y
	norm7/addAddV2norm7/Max:output:0norm7/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	norm7/addg
norm7/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
norm7/truediv/x
norm7/truedivRealDivnorm7/truediv/x:output:0norm7/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
norm7/truediv~
	norm8/mulMulnorm6/mul:z:0norm7/truediv:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm8/mul
conv1d_34/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_34/conv1d/ExpandDims/dimÄ
conv1d_34/conv1d/ExpandDims
ExpandDimsnorm8/mul:z:0(conv1d_34/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d_34/conv1d/ExpandDimsÖ
,conv1d_34/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_34_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02.
,conv1d_34/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_34/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_34/conv1d/ExpandDims_1/dimß
conv1d_34/conv1d/ExpandDims_1
ExpandDims4conv1d_34/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_34/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d_34/conv1d/ExpandDims_1ç
conv1d_34/conv1dConv2D$conv1d_34/conv1d/ExpandDims:output:0&conv1d_34/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d_34/conv1d¹
conv1d_34/conv1d/SqueezeSqueezeconv1d_34/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_34/conv1d/Squeezeª
 conv1d_34/BiasAdd/ReadVariableOpReadVariableOp)conv1d_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv1d_34/BiasAdd/ReadVariableOp½
conv1d_34/BiasAddBiasAdd!conv1d_34/conv1d/Squeeze:output:0(conv1d_34/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d_34/BiasAdd
activation_34/ReluReluconv1d_34/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
activation_34/Relu¿
5batch_normalization_27/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       27
5batch_normalization_27/moments/mean/reduction_indicesò
#batch_normalization_27/moments/meanMean activation_34/Relu:activations:0>batch_normalization_27/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2%
#batch_normalization_27/moments/meanÅ
+batch_normalization_27/moments/StopGradientStopGradient,batch_normalization_27/moments/mean:output:0*
T0*"
_output_shapes
:2-
+batch_normalization_27/moments/StopGradient
0batch_normalization_27/moments/SquaredDifferenceSquaredDifference activation_34/Relu:activations:04batch_normalization_27/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
0batch_normalization_27/moments/SquaredDifferenceÇ
9batch_normalization_27/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2;
9batch_normalization_27/moments/variance/reduction_indices
'batch_normalization_27/moments/varianceMean4batch_normalization_27/moments/SquaredDifference:z:0Bbatch_normalization_27/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2)
'batch_normalization_27/moments/varianceÆ
&batch_normalization_27/moments/SqueezeSqueeze,batch_normalization_27/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2(
&batch_normalization_27/moments/SqueezeÎ
(batch_normalization_27/moments/Squeeze_1Squeeze0batch_normalization_27/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2*
(batch_normalization_27/moments/Squeeze_1
,batch_normalization_27/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_27/AssignMovingAvg/176985*
_output_shapes
: *
dtype0*
valueB
 *
×#<2.
,batch_normalization_27/AssignMovingAvg/decayØ
5batch_normalization_27/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_27_assignmovingavg_176985*
_output_shapes
:*
dtype027
5batch_normalization_27/AssignMovingAvg/ReadVariableOpä
*batch_normalization_27/AssignMovingAvg/subSub=batch_normalization_27/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_27/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_27/AssignMovingAvg/176985*
_output_shapes
:2,
*batch_normalization_27/AssignMovingAvg/subÛ
*batch_normalization_27/AssignMovingAvg/mulMul.batch_normalization_27/AssignMovingAvg/sub:z:05batch_normalization_27/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_27/AssignMovingAvg/176985*
_output_shapes
:2,
*batch_normalization_27/AssignMovingAvg/mul¹
:batch_normalization_27/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_27_assignmovingavg_176985.batch_normalization_27/AssignMovingAvg/mul:z:06^batch_normalization_27/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_27/AssignMovingAvg/176985*
_output_shapes
 *
dtype02<
:batch_normalization_27/AssignMovingAvg/AssignSubVariableOp
.batch_normalization_27/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_27/AssignMovingAvg_1/176991*
_output_shapes
: *
dtype0*
valueB
 *
×#<20
.batch_normalization_27/AssignMovingAvg_1/decayÞ
7batch_normalization_27/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_27_assignmovingavg_1_176991*
_output_shapes
:*
dtype029
7batch_normalization_27/AssignMovingAvg_1/ReadVariableOpî
,batch_normalization_27/AssignMovingAvg_1/subSub?batch_normalization_27/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_27/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_27/AssignMovingAvg_1/176991*
_output_shapes
:2.
,batch_normalization_27/AssignMovingAvg_1/subå
,batch_normalization_27/AssignMovingAvg_1/mulMul0batch_normalization_27/AssignMovingAvg_1/sub:z:07batch_normalization_27/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_27/AssignMovingAvg_1/176991*
_output_shapes
:2.
,batch_normalization_27/AssignMovingAvg_1/mulÅ
<batch_normalization_27/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_27_assignmovingavg_1_1769910batch_normalization_27/AssignMovingAvg_1/mul:z:08^batch_normalization_27/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_27/AssignMovingAvg_1/176991*
_output_shapes
 *
dtype02>
<batch_normalization_27/AssignMovingAvg_1/AssignSubVariableOp
&batch_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_27/batchnorm/add/yÞ
$batch_normalization_27/batchnorm/addAddV21batch_normalization_27/moments/Squeeze_1:output:0/batch_normalization_27/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_27/batchnorm/add¨
&batch_normalization_27/batchnorm/RsqrtRsqrt(batch_normalization_27/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_27/batchnorm/Rsqrtã
3batch_normalization_27/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_27_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization_27/batchnorm/mul/ReadVariableOpá
$batch_normalization_27/batchnorm/mulMul*batch_normalization_27/batchnorm/Rsqrt:y:0;batch_normalization_27/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_27/batchnorm/mulâ
&batch_normalization_27/batchnorm/mul_1Mul activation_34/Relu:activations:0(batch_normalization_27/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_27/batchnorm/mul_1×
&batch_normalization_27/batchnorm/mul_2Mul/batch_normalization_27/moments/Squeeze:output:0(batch_normalization_27/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_27/batchnorm/mul_2×
/batch_normalization_27/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_27_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype021
/batch_normalization_27/batchnorm/ReadVariableOpÝ
$batch_normalization_27/batchnorm/subSub7batch_normalization_27/batchnorm/ReadVariableOp:value:0*batch_normalization_27/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_27/batchnorm/subî
&batch_normalization_27/batchnorm/add_1AddV2*batch_normalization_27/batchnorm/mul_1:z:0(batch_normalization_27/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_27/batchnorm/add_1y
dropout_24/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *%?2
dropout_24/dropout/ConstÅ
dropout_24/dropout/MulMul*batch_normalization_27/batchnorm/add_1:z:0!dropout_24/dropout/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout_24/dropout/Mul
dropout_24/dropout/ShapeShape*batch_normalization_27/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_24/dropout/Shapeþ
/dropout_24/dropout/random_uniform/RandomUniformRandomUniform!dropout_24/dropout/Shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2%21
/dropout_24/dropout/random_uniform/RandomUniform
!dropout_24/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *AFþ=2#
!dropout_24/dropout/GreaterEqual/y÷
dropout_24/dropout/GreaterEqualGreaterEqual8dropout_24/dropout/random_uniform/RandomUniform:output:0*dropout_24/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
dropout_24/dropout/GreaterEqual­
dropout_24/dropout/CastCast#dropout_24/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout_24/dropout/Cast³
dropout_24/dropout/Mul_1Muldropout_24/dropout/Mul:z:0dropout_24/dropout/Cast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout_24/dropout/Mul_1
conv1d_35/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_35/conv1d/ExpandDims/dimÓ
conv1d_35/conv1d/ExpandDims
ExpandDimsdropout_24/dropout/Mul_1:z:0(conv1d_35/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d_35/conv1d/ExpandDimsÖ
,conv1d_35/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_35_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0*
dtype02.
,conv1d_35/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_35/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_35/conv1d/ExpandDims_1/dimß
conv1d_35/conv1d/ExpandDims_1
ExpandDims4conv1d_35/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_35/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:02
conv1d_35/conv1d/ExpandDims_1ç
conv1d_35/conv1dConv2D$conv1d_35/conv1d/ExpandDims:output:0&conv1d_35/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
paddingSAME*
strides
2
conv1d_35/conv1d¹
conv1d_35/conv1d/SqueezeSqueezeconv1d_35/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_35/conv1d/Squeezeª
 conv1d_35/BiasAdd/ReadVariableOpReadVariableOp)conv1d_35_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv1d_35/BiasAdd/ReadVariableOp½
conv1d_35/BiasAddBiasAdd!conv1d_35/conv1d/Squeeze:output:0(conv1d_35/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
conv1d_35/BiasAdd
activation_35/ReluReluconv1d_35/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
activation_35/Relu¿
5batch_normalization_28/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       27
5batch_normalization_28/moments/mean/reduction_indicesò
#batch_normalization_28/moments/meanMean activation_35/Relu:activations:0>batch_normalization_28/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:0*
	keep_dims(2%
#batch_normalization_28/moments/meanÅ
+batch_normalization_28/moments/StopGradientStopGradient,batch_normalization_28/moments/mean:output:0*
T0*"
_output_shapes
:02-
+batch_normalization_28/moments/StopGradient
0batch_normalization_28/moments/SquaredDifferenceSquaredDifference activation_35/Relu:activations:04batch_normalization_28/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ022
0batch_normalization_28/moments/SquaredDifferenceÇ
9batch_normalization_28/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2;
9batch_normalization_28/moments/variance/reduction_indices
'batch_normalization_28/moments/varianceMean4batch_normalization_28/moments/SquaredDifference:z:0Bbatch_normalization_28/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:0*
	keep_dims(2)
'batch_normalization_28/moments/varianceÆ
&batch_normalization_28/moments/SqueezeSqueeze,batch_normalization_28/moments/mean:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 2(
&batch_normalization_28/moments/SqueezeÎ
(batch_normalization_28/moments/Squeeze_1Squeeze0batch_normalization_28/moments/variance:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 2*
(batch_normalization_28/moments/Squeeze_1
,batch_normalization_28/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_28/AssignMovingAvg/177037*
_output_shapes
: *
dtype0*
valueB
 *
×#<2.
,batch_normalization_28/AssignMovingAvg/decayØ
5batch_normalization_28/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_28_assignmovingavg_177037*
_output_shapes
:0*
dtype027
5batch_normalization_28/AssignMovingAvg/ReadVariableOpä
*batch_normalization_28/AssignMovingAvg/subSub=batch_normalization_28/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_28/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_28/AssignMovingAvg/177037*
_output_shapes
:02,
*batch_normalization_28/AssignMovingAvg/subÛ
*batch_normalization_28/AssignMovingAvg/mulMul.batch_normalization_28/AssignMovingAvg/sub:z:05batch_normalization_28/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_28/AssignMovingAvg/177037*
_output_shapes
:02,
*batch_normalization_28/AssignMovingAvg/mul¹
:batch_normalization_28/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_28_assignmovingavg_177037.batch_normalization_28/AssignMovingAvg/mul:z:06^batch_normalization_28/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_28/AssignMovingAvg/177037*
_output_shapes
 *
dtype02<
:batch_normalization_28/AssignMovingAvg/AssignSubVariableOp
.batch_normalization_28/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_28/AssignMovingAvg_1/177043*
_output_shapes
: *
dtype0*
valueB
 *
×#<20
.batch_normalization_28/AssignMovingAvg_1/decayÞ
7batch_normalization_28/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_28_assignmovingavg_1_177043*
_output_shapes
:0*
dtype029
7batch_normalization_28/AssignMovingAvg_1/ReadVariableOpî
,batch_normalization_28/AssignMovingAvg_1/subSub?batch_normalization_28/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_28/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_28/AssignMovingAvg_1/177043*
_output_shapes
:02.
,batch_normalization_28/AssignMovingAvg_1/subå
,batch_normalization_28/AssignMovingAvg_1/mulMul0batch_normalization_28/AssignMovingAvg_1/sub:z:07batch_normalization_28/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_28/AssignMovingAvg_1/177043*
_output_shapes
:02.
,batch_normalization_28/AssignMovingAvg_1/mulÅ
<batch_normalization_28/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_28_assignmovingavg_1_1770430batch_normalization_28/AssignMovingAvg_1/mul:z:08^batch_normalization_28/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_28/AssignMovingAvg_1/177043*
_output_shapes
 *
dtype02>
<batch_normalization_28/AssignMovingAvg_1/AssignSubVariableOp
&batch_normalization_28/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_28/batchnorm/add/yÞ
$batch_normalization_28/batchnorm/addAddV21batch_normalization_28/moments/Squeeze_1:output:0/batch_normalization_28/batchnorm/add/y:output:0*
T0*
_output_shapes
:02&
$batch_normalization_28/batchnorm/add¨
&batch_normalization_28/batchnorm/RsqrtRsqrt(batch_normalization_28/batchnorm/add:z:0*
T0*
_output_shapes
:02(
&batch_normalization_28/batchnorm/Rsqrtã
3batch_normalization_28/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_28_batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype025
3batch_normalization_28/batchnorm/mul/ReadVariableOpá
$batch_normalization_28/batchnorm/mulMul*batch_normalization_28/batchnorm/Rsqrt:y:0;batch_normalization_28/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:02&
$batch_normalization_28/batchnorm/mulâ
&batch_normalization_28/batchnorm/mul_1Mul activation_35/Relu:activations:0(batch_normalization_28/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02(
&batch_normalization_28/batchnorm/mul_1×
&batch_normalization_28/batchnorm/mul_2Mul/batch_normalization_28/moments/Squeeze:output:0(batch_normalization_28/batchnorm/mul:z:0*
T0*
_output_shapes
:02(
&batch_normalization_28/batchnorm/mul_2×
/batch_normalization_28/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_28_batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype021
/batch_normalization_28/batchnorm/ReadVariableOpÝ
$batch_normalization_28/batchnorm/subSub7batch_normalization_28/batchnorm/ReadVariableOp:value:0*batch_normalization_28/batchnorm/mul_2:z:0*
T0*
_output_shapes
:02&
$batch_normalization_28/batchnorm/subî
&batch_normalization_28/batchnorm/add_1AddV2*batch_normalization_28/batchnorm/mul_1:z:0(batch_normalization_28/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02(
&batch_normalization_28/batchnorm/add_1y
dropout_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *,?2
dropout_25/dropout/ConstÅ
dropout_25/dropout/MulMul*batch_normalization_28/batchnorm/add_1:z:0!dropout_25/dropout/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
dropout_25/dropout/Mul
dropout_25/dropout/ShapeShape*batch_normalization_28/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_25/dropout/Shapeþ
/dropout_25/dropout/random_uniform/RandomUniformRandomUniform!dropout_25/dropout/Shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
dtype0*
seed±ÿå)*
seed2%21
/dropout_25/dropout/random_uniform/RandomUniform
!dropout_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ûe=2#
!dropout_25/dropout/GreaterEqual/y÷
dropout_25/dropout/GreaterEqualGreaterEqual8dropout_25/dropout/random_uniform/RandomUniform:output:0*dropout_25/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02!
dropout_25/dropout/GreaterEqual­
dropout_25/dropout/CastCast#dropout_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
dropout_25/dropout/Cast³
dropout_25/dropout/Mul_1Muldropout_25/dropout/Mul:z:0dropout_25/dropout/Cast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
dropout_25/dropout/Mul_1
conv1d_36/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_36/conv1d/ExpandDims/dimÓ
conv1d_36/conv1d/ExpandDims
ExpandDimsdropout_25/dropout/Mul_1:z:0(conv1d_36/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
conv1d_36/conv1d/ExpandDimsÖ
,conv1d_36/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_36_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0H*
dtype02.
,conv1d_36/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_36/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_36/conv1d/ExpandDims_1/dimß
conv1d_36/conv1d/ExpandDims_1
ExpandDims4conv1d_36/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_36/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:0H2
conv1d_36/conv1d/ExpandDims_1ç
conv1d_36/conv1dConv2D$conv1d_36/conv1d/ExpandDims:output:0&conv1d_36/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
paddingSAME*
strides
2
conv1d_36/conv1d¹
conv1d_36/conv1d/SqueezeSqueezeconv1d_36/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_36/conv1d/Squeezeª
 conv1d_36/BiasAdd/ReadVariableOpReadVariableOp)conv1d_36_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02"
 conv1d_36/BiasAdd/ReadVariableOp½
conv1d_36/BiasAddBiasAdd!conv1d_36/conv1d/Squeeze:output:0(conv1d_36/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
conv1d_36/BiasAdd
activation_36/ReluReluconv1d_36/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
activation_36/Reluj
mer0/mulMulinputsinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer0/mul¿
5batch_normalization_29/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       27
5batch_normalization_29/moments/mean/reduction_indicesò
#batch_normalization_29/moments/meanMean activation_36/Relu:activations:0>batch_normalization_29/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:H*
	keep_dims(2%
#batch_normalization_29/moments/meanÅ
+batch_normalization_29/moments/StopGradientStopGradient,batch_normalization_29/moments/mean:output:0*
T0*"
_output_shapes
:H2-
+batch_normalization_29/moments/StopGradient
0batch_normalization_29/moments/SquaredDifferenceSquaredDifference activation_36/Relu:activations:04batch_normalization_29/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH22
0batch_normalization_29/moments/SquaredDifferenceÇ
9batch_normalization_29/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2;
9batch_normalization_29/moments/variance/reduction_indices
'batch_normalization_29/moments/varianceMean4batch_normalization_29/moments/SquaredDifference:z:0Bbatch_normalization_29/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:H*
	keep_dims(2)
'batch_normalization_29/moments/varianceÆ
&batch_normalization_29/moments/SqueezeSqueeze,batch_normalization_29/moments/mean:output:0*
T0*
_output_shapes
:H*
squeeze_dims
 2(
&batch_normalization_29/moments/SqueezeÎ
(batch_normalization_29/moments/Squeeze_1Squeeze0batch_normalization_29/moments/variance:output:0*
T0*
_output_shapes
:H*
squeeze_dims
 2*
(batch_normalization_29/moments/Squeeze_1
,batch_normalization_29/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_29/AssignMovingAvg/177090*
_output_shapes
: *
dtype0*
valueB
 *
×#<2.
,batch_normalization_29/AssignMovingAvg/decayØ
5batch_normalization_29/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_29_assignmovingavg_177090*
_output_shapes
:H*
dtype027
5batch_normalization_29/AssignMovingAvg/ReadVariableOpä
*batch_normalization_29/AssignMovingAvg/subSub=batch_normalization_29/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_29/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_29/AssignMovingAvg/177090*
_output_shapes
:H2,
*batch_normalization_29/AssignMovingAvg/subÛ
*batch_normalization_29/AssignMovingAvg/mulMul.batch_normalization_29/AssignMovingAvg/sub:z:05batch_normalization_29/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_29/AssignMovingAvg/177090*
_output_shapes
:H2,
*batch_normalization_29/AssignMovingAvg/mul¹
:batch_normalization_29/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_29_assignmovingavg_177090.batch_normalization_29/AssignMovingAvg/mul:z:06^batch_normalization_29/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_29/AssignMovingAvg/177090*
_output_shapes
 *
dtype02<
:batch_normalization_29/AssignMovingAvg/AssignSubVariableOp
.batch_normalization_29/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_29/AssignMovingAvg_1/177096*
_output_shapes
: *
dtype0*
valueB
 *
×#<20
.batch_normalization_29/AssignMovingAvg_1/decayÞ
7batch_normalization_29/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_29_assignmovingavg_1_177096*
_output_shapes
:H*
dtype029
7batch_normalization_29/AssignMovingAvg_1/ReadVariableOpî
,batch_normalization_29/AssignMovingAvg_1/subSub?batch_normalization_29/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_29/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_29/AssignMovingAvg_1/177096*
_output_shapes
:H2.
,batch_normalization_29/AssignMovingAvg_1/subå
,batch_normalization_29/AssignMovingAvg_1/mulMul0batch_normalization_29/AssignMovingAvg_1/sub:z:07batch_normalization_29/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_29/AssignMovingAvg_1/177096*
_output_shapes
:H2.
,batch_normalization_29/AssignMovingAvg_1/mulÅ
<batch_normalization_29/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_29_assignmovingavg_1_1770960batch_normalization_29/AssignMovingAvg_1/mul:z:08^batch_normalization_29/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_29/AssignMovingAvg_1/177096*
_output_shapes
 *
dtype02>
<batch_normalization_29/AssignMovingAvg_1/AssignSubVariableOp
&batch_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_29/batchnorm/add/yÞ
$batch_normalization_29/batchnorm/addAddV21batch_normalization_29/moments/Squeeze_1:output:0/batch_normalization_29/batchnorm/add/y:output:0*
T0*
_output_shapes
:H2&
$batch_normalization_29/batchnorm/add¨
&batch_normalization_29/batchnorm/RsqrtRsqrt(batch_normalization_29/batchnorm/add:z:0*
T0*
_output_shapes
:H2(
&batch_normalization_29/batchnorm/Rsqrtã
3batch_normalization_29/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_29_batchnorm_mul_readvariableop_resource*
_output_shapes
:H*
dtype025
3batch_normalization_29/batchnorm/mul/ReadVariableOpá
$batch_normalization_29/batchnorm/mulMul*batch_normalization_29/batchnorm/Rsqrt:y:0;batch_normalization_29/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:H2&
$batch_normalization_29/batchnorm/mulâ
&batch_normalization_29/batchnorm/mul_1Mul activation_36/Relu:activations:0(batch_normalization_29/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2(
&batch_normalization_29/batchnorm/mul_1×
&batch_normalization_29/batchnorm/mul_2Mul/batch_normalization_29/moments/Squeeze:output:0(batch_normalization_29/batchnorm/mul:z:0*
T0*
_output_shapes
:H2(
&batch_normalization_29/batchnorm/mul_2×
/batch_normalization_29/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_29_batchnorm_readvariableop_resource*
_output_shapes
:H*
dtype021
/batch_normalization_29/batchnorm/ReadVariableOpÝ
$batch_normalization_29/batchnorm/subSub7batch_normalization_29/batchnorm/ReadVariableOp:value:0*batch_normalization_29/batchnorm/mul_2:z:0*
T0*
_output_shapes
:H2&
$batch_normalization_29/batchnorm/subî
&batch_normalization_29/batchnorm/add_1AddV2*batch_normalization_29/batchnorm/mul_1:z:0(batch_normalization_29/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2(
&batch_normalization_29/batchnorm/add_1t
mer3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
mer3/ReverseV2/axis
mer3/ReverseV2	ReverseV2mer0/mul:z:0mer3/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer3/ReverseV2y
dropout_26/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *W¢?2
dropout_26/dropout/ConstÅ
dropout_26/dropout/MulMul*batch_normalization_29/batchnorm/add_1:z:0!dropout_26/dropout/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
dropout_26/dropout/Mul
dropout_26/dropout/ShapeShape*batch_normalization_29/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_26/dropout/Shapeþ
/dropout_26/dropout/random_uniform/RandomUniformRandomUniform!dropout_26/dropout/Shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
dtype0*
seed±ÿå)*
seed2%21
/dropout_26/dropout/random_uniform/RandomUniform
!dropout_26/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *{'W>2#
!dropout_26/dropout/GreaterEqual/y÷
dropout_26/dropout/GreaterEqualGreaterEqual8dropout_26/dropout/random_uniform/RandomUniform:output:0*dropout_26/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2!
dropout_26/dropout/GreaterEqual­
dropout_26/dropout/CastCast#dropout_26/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
dropout_26/dropout/Cast³
dropout_26/dropout/Mul_1Muldropout_26/dropout/Mul:z:0dropout_26/dropout/Cast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
dropout_26/dropout/Mul_1
mer1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"        d               2
mer1/Pad/paddings
mer1/PadPadmer0/mul:z:0mer1/Pad/paddings:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer1/Pad
mer1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
mer1/conv1d/ExpandDims/dim¹
mer1/conv1d/ExpandDims
ExpandDimsmer1/Pad:output:0#mer1/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer1/conv1d/ExpandDimsÇ
'mer1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0mer1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:e*
dtype02)
'mer1/conv1d/ExpandDims_1/ReadVariableOp~
mer1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
mer1/conv1d/ExpandDims_1/dimË
mer1/conv1d/ExpandDims_1
ExpandDims/mer1/conv1d/ExpandDims_1/ReadVariableOp:value:0%mer1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:e2
mer1/conv1d/ExpandDims_1Ô
mer1/conv1dConv2Dmer1/conv1d/ExpandDims:output:0!mer1/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
mer1/conv1dª
mer1/conv1d/SqueezeSqueezemer1/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
mer1/conv1d/Squeeze
mer4/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"        d               2
mer4/Pad/paddings
mer4/PadPadmer3/ReverseV2:output:0mer4/Pad/paddings:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer4/Pad
mer4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
mer4/conv1d/ExpandDims/dim¹
mer4/conv1d/ExpandDims
ExpandDimsmer4/Pad:output:0#mer4/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer4/conv1d/ExpandDimsÇ
'mer4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0mer4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:e*
dtype02)
'mer4/conv1d/ExpandDims_1/ReadVariableOp~
mer4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
mer4/conv1d/ExpandDims_1/dimË
mer4/conv1d/ExpandDims_1
ExpandDims/mer4/conv1d/ExpandDims_1/ReadVariableOp:value:0%mer4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:e2
mer4/conv1d/ExpandDims_1Ô
mer4/conv1dConv2Dmer4/conv1d/ExpandDims:output:0!mer4/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
mer4/conv1dª
mer4/conv1d/SqueezeSqueezemer4/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
mer4/conv1d/Squeeze
conv1d_37/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_37/conv1d/ExpandDims/dimÓ
conv1d_37/conv1d/ExpandDims
ExpandDimsdropout_26/dropout/Mul_1:z:0(conv1d_37/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
conv1d_37/conv1d/ExpandDimsÖ
,conv1d_37/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_37_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:H`*
dtype02.
,conv1d_37/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_37/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_37/conv1d/ExpandDims_1/dimß
conv1d_37/conv1d/ExpandDims_1
ExpandDims4conv1d_37/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_37/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:H`2
conv1d_37/conv1d/ExpandDims_1ç
conv1d_37/conv1dConv2D$conv1d_37/conv1d/ExpandDims:output:0&conv1d_37/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
paddingSAME*
strides
2
conv1d_37/conv1d¹
conv1d_37/conv1d/SqueezeSqueezeconv1d_37/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_37/conv1d/Squeezeª
 conv1d_37/BiasAdd/ReadVariableOpReadVariableOp)conv1d_37_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02"
 conv1d_37/BiasAdd/ReadVariableOp½
conv1d_37/BiasAddBiasAdd!conv1d_37/conv1d/Squeeze:output:0(conv1d_37/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
conv1d_37/BiasAdde
mer5/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
mer5/truediv/y
mer5/truedivRealDivmer4/conv1d/Squeeze:output:0mer5/truediv/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer5/truedivt
mer5/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
mer5/ReverseV2/axis
mer5/ReverseV2	ReverseV2mer5/truediv:z:0mer5/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer5/ReverseV2e
mer2/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
mer2/truediv/x
mer2/truedivRealDivmer2/truediv/x:output:0mer1/conv1d/Squeeze:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer2/truediv]

mer2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2

mer2/add/y
mer2/addAddV2mer2/truediv:z:0mer2/add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer2/add
activation_37/ReluReluconv1d_37/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
activation_37/Relu
mer6/mulMulmer5/ReverseV2:output:0mer2/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer6/mul¿
5batch_normalization_30/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       27
5batch_normalization_30/moments/mean/reduction_indicesò
#batch_normalization_30/moments/meanMean activation_37/Relu:activations:0>batch_normalization_30/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:`*
	keep_dims(2%
#batch_normalization_30/moments/meanÅ
+batch_normalization_30/moments/StopGradientStopGradient,batch_normalization_30/moments/mean:output:0*
T0*"
_output_shapes
:`2-
+batch_normalization_30/moments/StopGradient
0batch_normalization_30/moments/SquaredDifferenceSquaredDifference activation_37/Relu:activations:04batch_normalization_30/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`22
0batch_normalization_30/moments/SquaredDifferenceÇ
9batch_normalization_30/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2;
9batch_normalization_30/moments/variance/reduction_indices
'batch_normalization_30/moments/varianceMean4batch_normalization_30/moments/SquaredDifference:z:0Bbatch_normalization_30/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:`*
	keep_dims(2)
'batch_normalization_30/moments/varianceÆ
&batch_normalization_30/moments/SqueezeSqueeze,batch_normalization_30/moments/mean:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 2(
&batch_normalization_30/moments/SqueezeÎ
(batch_normalization_30/moments/Squeeze_1Squeeze0batch_normalization_30/moments/variance:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 2*
(batch_normalization_30/moments/Squeeze_1
,batch_normalization_30/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_30/AssignMovingAvg/177173*
_output_shapes
: *
dtype0*
valueB
 *
×#<2.
,batch_normalization_30/AssignMovingAvg/decayØ
5batch_normalization_30/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_30_assignmovingavg_177173*
_output_shapes
:`*
dtype027
5batch_normalization_30/AssignMovingAvg/ReadVariableOpä
*batch_normalization_30/AssignMovingAvg/subSub=batch_normalization_30/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_30/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_30/AssignMovingAvg/177173*
_output_shapes
:`2,
*batch_normalization_30/AssignMovingAvg/subÛ
*batch_normalization_30/AssignMovingAvg/mulMul.batch_normalization_30/AssignMovingAvg/sub:z:05batch_normalization_30/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_30/AssignMovingAvg/177173*
_output_shapes
:`2,
*batch_normalization_30/AssignMovingAvg/mul¹
:batch_normalization_30/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_30_assignmovingavg_177173.batch_normalization_30/AssignMovingAvg/mul:z:06^batch_normalization_30/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_30/AssignMovingAvg/177173*
_output_shapes
 *
dtype02<
:batch_normalization_30/AssignMovingAvg/AssignSubVariableOp
.batch_normalization_30/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_30/AssignMovingAvg_1/177179*
_output_shapes
: *
dtype0*
valueB
 *
×#<20
.batch_normalization_30/AssignMovingAvg_1/decayÞ
7batch_normalization_30/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_30_assignmovingavg_1_177179*
_output_shapes
:`*
dtype029
7batch_normalization_30/AssignMovingAvg_1/ReadVariableOpî
,batch_normalization_30/AssignMovingAvg_1/subSub?batch_normalization_30/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_30/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_30/AssignMovingAvg_1/177179*
_output_shapes
:`2.
,batch_normalization_30/AssignMovingAvg_1/subå
,batch_normalization_30/AssignMovingAvg_1/mulMul0batch_normalization_30/AssignMovingAvg_1/sub:z:07batch_normalization_30/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_30/AssignMovingAvg_1/177179*
_output_shapes
:`2.
,batch_normalization_30/AssignMovingAvg_1/mulÅ
<batch_normalization_30/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_30_assignmovingavg_1_1771790batch_normalization_30/AssignMovingAvg_1/mul:z:08^batch_normalization_30/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_30/AssignMovingAvg_1/177179*
_output_shapes
 *
dtype02>
<batch_normalization_30/AssignMovingAvg_1/AssignSubVariableOp
&batch_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_30/batchnorm/add/yÞ
$batch_normalization_30/batchnorm/addAddV21batch_normalization_30/moments/Squeeze_1:output:0/batch_normalization_30/batchnorm/add/y:output:0*
T0*
_output_shapes
:`2&
$batch_normalization_30/batchnorm/add¨
&batch_normalization_30/batchnorm/RsqrtRsqrt(batch_normalization_30/batchnorm/add:z:0*
T0*
_output_shapes
:`2(
&batch_normalization_30/batchnorm/Rsqrtã
3batch_normalization_30/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_30_batchnorm_mul_readvariableop_resource*
_output_shapes
:`*
dtype025
3batch_normalization_30/batchnorm/mul/ReadVariableOpá
$batch_normalization_30/batchnorm/mulMul*batch_normalization_30/batchnorm/Rsqrt:y:0;batch_normalization_30/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:`2&
$batch_normalization_30/batchnorm/mulâ
&batch_normalization_30/batchnorm/mul_1Mul activation_37/Relu:activations:0(batch_normalization_30/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2(
&batch_normalization_30/batchnorm/mul_1×
&batch_normalization_30/batchnorm/mul_2Mul/batch_normalization_30/moments/Squeeze:output:0(batch_normalization_30/batchnorm/mul:z:0*
T0*
_output_shapes
:`2(
&batch_normalization_30/batchnorm/mul_2×
/batch_normalization_30/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_30_batchnorm_readvariableop_resource*
_output_shapes
:`*
dtype021
/batch_normalization_30/batchnorm/ReadVariableOpÝ
$batch_normalization_30/batchnorm/subSub7batch_normalization_30/batchnorm/ReadVariableOp:value:0*batch_normalization_30/batchnorm/mul_2:z:0*
T0*
_output_shapes
:`2&
$batch_normalization_30/batchnorm/subî
&batch_normalization_30/batchnorm/add_1AddV2*batch_normalization_30/batchnorm/mul_1:z:0(batch_normalization_30/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2(
&batch_normalization_30/batchnorm/add_1e
mer7/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
mer7/Greater/y
mer7/GreaterGreatermer6/mul:z:0mer7/Greater/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer7/Greater~
	mer7/CastCastmer7/Greater:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	mer7/Casty
dropout_27/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *gk?2
dropout_27/dropout/ConstÅ
dropout_27/dropout/MulMul*batch_normalization_30/batchnorm/add_1:z:0!dropout_27/dropout/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
dropout_27/dropout/Mul
dropout_27/dropout/ShapeShape*batch_normalization_30/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_27/dropout/Shapeþ
/dropout_27/dropout/random_uniform/RandomUniformRandomUniform!dropout_27/dropout/Shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
dtype0*
seed±ÿå)*
seed2%21
/dropout_27/dropout/random_uniform/RandomUniform
!dropout_27/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *¶©)>2#
!dropout_27/dropout/GreaterEqual/y÷
dropout_27/dropout/GreaterEqualGreaterEqual8dropout_27/dropout/random_uniform/RandomUniform:output:0*dropout_27/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2!
dropout_27/dropout/GreaterEqual­
dropout_27/dropout/CastCast#dropout_27/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
dropout_27/dropout/Cast³
dropout_27/dropout/Mul_1Muldropout_27/dropout/Mul:z:0dropout_27/dropout/Cast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
dropout_27/dropout/Mul_1]

mer8/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2

mer8/mul/y~
mer8/mulMulmer7/Cast:y:0mer8/mul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer8/mul]

mer8/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2

mer8/add/y
mer8/addAddV2mer8/mul:z:0mer8/add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer8/add]

mer9/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2

mer9/mul/y~
mer9/mulMulmer7/Cast:y:0mer9/mul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer9/mul]

mer9/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2

mer9/add/y
mer9/addAddV2mer9/mul:z:0mer9/add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer9/add
conv1d_38/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_38/conv1d/ExpandDims/dimÓ
conv1d_38/conv1d/ExpandDims
ExpandDimsdropout_27/dropout/Mul_1:z:0(conv1d_38/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
conv1d_38/conv1d/ExpandDims×
,conv1d_38/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_38_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`*
dtype02.
,conv1d_38/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_38/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_38/conv1d/ExpandDims_1/dimà
conv1d_38/conv1d/ExpandDims_1
ExpandDims4conv1d_38/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_38/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`2
conv1d_38/conv1d/ExpandDims_1ç
conv1d_38/conv1dConv2D$conv1d_38/conv1d/ExpandDims:output:0&conv1d_38/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d_38/conv1d¹
conv1d_38/conv1d/SqueezeSqueezeconv1d_38/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_38/conv1d/Squeezeª
 conv1d_38/BiasAdd/ReadVariableOpReadVariableOp)conv1d_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv1d_38/BiasAdd/ReadVariableOp½
conv1d_38/BiasAddBiasAdd!conv1d_38/conv1d/Squeeze:output:0(conv1d_38/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d_38/BiasAdd
activation_38/SigmoidSigmoidconv1d_38/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
activation_38/Sigmoidh
mer10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
mer10/concat/axis·
mer10/concatConcatV2mer8/add:z:0mer7/Cast:y:0mer9/add:z:0mer10/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer10/concat
segm_out/mulMulactivation_38/Sigmoid:y:0mer10/concat:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
segm_out/mul·
IdentityIdentitysegm_out/mul:z:0;^batch_normalization_27/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_27/AssignMovingAvg/ReadVariableOp=^batch_normalization_27/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_27/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_27/batchnorm/ReadVariableOp4^batch_normalization_27/batchnorm/mul/ReadVariableOp;^batch_normalization_28/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_28/AssignMovingAvg/ReadVariableOp=^batch_normalization_28/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_28/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_28/batchnorm/ReadVariableOp4^batch_normalization_28/batchnorm/mul/ReadVariableOp;^batch_normalization_29/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_29/AssignMovingAvg/ReadVariableOp=^batch_normalization_29/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_29/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_29/batchnorm/ReadVariableOp4^batch_normalization_29/batchnorm/mul/ReadVariableOp;^batch_normalization_30/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_30/AssignMovingAvg/ReadVariableOp=^batch_normalization_30/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_30/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_30/batchnorm/ReadVariableOp4^batch_normalization_30/batchnorm/mul/ReadVariableOp!^conv1d_34/BiasAdd/ReadVariableOp-^conv1d_34/conv1d/ExpandDims_1/ReadVariableOp!^conv1d_35/BiasAdd/ReadVariableOp-^conv1d_35/conv1d/ExpandDims_1/ReadVariableOp!^conv1d_36/BiasAdd/ReadVariableOp-^conv1d_36/conv1d/ExpandDims_1/ReadVariableOp!^conv1d_37/BiasAdd/ReadVariableOp-^conv1d_37/conv1d/ExpandDims_1/ReadVariableOp!^conv1d_38/BiasAdd/ReadVariableOp-^conv1d_38/conv1d/ExpandDims_1/ReadVariableOp(^mer1/conv1d/ExpandDims_1/ReadVariableOp(^mer4/conv1d/ExpandDims_1/ReadVariableOp)^norm0/conv1d/ExpandDims_1/ReadVariableOp)^norm4/conv1d/ExpandDims_1/ReadVariableOp(^sinc/conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*±
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::::::::::::2x
:batch_normalization_27/AssignMovingAvg/AssignSubVariableOp:batch_normalization_27/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_27/AssignMovingAvg/ReadVariableOp5batch_normalization_27/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_27/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_27/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_27/AssignMovingAvg_1/ReadVariableOp7batch_normalization_27/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_27/batchnorm/ReadVariableOp/batch_normalization_27/batchnorm/ReadVariableOp2j
3batch_normalization_27/batchnorm/mul/ReadVariableOp3batch_normalization_27/batchnorm/mul/ReadVariableOp2x
:batch_normalization_28/AssignMovingAvg/AssignSubVariableOp:batch_normalization_28/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_28/AssignMovingAvg/ReadVariableOp5batch_normalization_28/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_28/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_28/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_28/AssignMovingAvg_1/ReadVariableOp7batch_normalization_28/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_28/batchnorm/ReadVariableOp/batch_normalization_28/batchnorm/ReadVariableOp2j
3batch_normalization_28/batchnorm/mul/ReadVariableOp3batch_normalization_28/batchnorm/mul/ReadVariableOp2x
:batch_normalization_29/AssignMovingAvg/AssignSubVariableOp:batch_normalization_29/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_29/AssignMovingAvg/ReadVariableOp5batch_normalization_29/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_29/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_29/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_29/AssignMovingAvg_1/ReadVariableOp7batch_normalization_29/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_29/batchnorm/ReadVariableOp/batch_normalization_29/batchnorm/ReadVariableOp2j
3batch_normalization_29/batchnorm/mul/ReadVariableOp3batch_normalization_29/batchnorm/mul/ReadVariableOp2x
:batch_normalization_30/AssignMovingAvg/AssignSubVariableOp:batch_normalization_30/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_30/AssignMovingAvg/ReadVariableOp5batch_normalization_30/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_30/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_30/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_30/AssignMovingAvg_1/ReadVariableOp7batch_normalization_30/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_30/batchnorm/ReadVariableOp/batch_normalization_30/batchnorm/ReadVariableOp2j
3batch_normalization_30/batchnorm/mul/ReadVariableOp3batch_normalization_30/batchnorm/mul/ReadVariableOp2D
 conv1d_34/BiasAdd/ReadVariableOp conv1d_34/BiasAdd/ReadVariableOp2\
,conv1d_34/conv1d/ExpandDims_1/ReadVariableOp,conv1d_34/conv1d/ExpandDims_1/ReadVariableOp2D
 conv1d_35/BiasAdd/ReadVariableOp conv1d_35/BiasAdd/ReadVariableOp2\
,conv1d_35/conv1d/ExpandDims_1/ReadVariableOp,conv1d_35/conv1d/ExpandDims_1/ReadVariableOp2D
 conv1d_36/BiasAdd/ReadVariableOp conv1d_36/BiasAdd/ReadVariableOp2\
,conv1d_36/conv1d/ExpandDims_1/ReadVariableOp,conv1d_36/conv1d/ExpandDims_1/ReadVariableOp2D
 conv1d_37/BiasAdd/ReadVariableOp conv1d_37/BiasAdd/ReadVariableOp2\
,conv1d_37/conv1d/ExpandDims_1/ReadVariableOp,conv1d_37/conv1d/ExpandDims_1/ReadVariableOp2D
 conv1d_38/BiasAdd/ReadVariableOp conv1d_38/BiasAdd/ReadVariableOp2\
,conv1d_38/conv1d/ExpandDims_1/ReadVariableOp,conv1d_38/conv1d/ExpandDims_1/ReadVariableOp2R
'mer1/conv1d/ExpandDims_1/ReadVariableOp'mer1/conv1d/ExpandDims_1/ReadVariableOp2R
'mer4/conv1d/ExpandDims_1/ReadVariableOp'mer4/conv1d/ExpandDims_1/ReadVariableOp2T
(norm0/conv1d/ExpandDims_1/ReadVariableOp(norm0/conv1d/ExpandDims_1/ReadVariableOp2T
(norm4/conv1d/ExpandDims_1/ReadVariableOp(norm4/conv1d/ExpandDims_1/ReadVariableOp2R
'sinc/conv1d/ExpandDims_1/ReadVariableOp'sinc/conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À
µ
@__inference_mer1_layer_call_and_return_conditional_losses_176001

inputs/
+conv1d_expanddims_1_readvariableop_resource
identity¢"conv1d/ExpandDims_1/ReadVariableOp
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"        d               2
Pad/paddingso
PadPadinputsPad/paddings:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim¥
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:e*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:e2
conv1d/ExpandDims_1À
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
IdentityIdentityconv1d/Squeeze:output:0#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
J
.__inference_activation_36_layer_call_fn_178111

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_36_layer_call_and_return_conditional_losses_1758742
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
Ã
A
%__inference_mer7_layer_call_fn_178522

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer7_layer_call_and_return_conditional_losses_1761982
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
B
&__inference_norm1_layer_call_fn_177652

inputs
identityÑ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm1_layer_call_and_return_conditional_losses_1754452
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
ø
E__inference_conv1d_35_layer_call_and_return_conditional_losses_177949

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:02
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02	
BiasAdd¯
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
¶
A__inference_norm4_layer_call_and_return_conditional_losses_177688

inputs/
+conv1d_expanddims_1_readvariableop_resource
identity¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¹
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:­*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¸
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:­2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
IdentityIdentityconv1d/Squeeze:output:0#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
l
@__inference_mer0_layer_call_and_return_conditional_losses_178199
inputs_0
inputs_1
identityd
mulMulinputs_0inputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1

y
A__inference_mer10_layer_call_and_return_conditional_losses_176358

inputs
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concatp
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê
U
)__inference_segm_out_layer_call_fn_178640
inputs_0
inputs_1
identityá
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_segm_out_layer_call_and_return_conditional_losses_1763742
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
í
e
I__inference_activation_38_layer_call_and_return_conditional_losses_178608

inputs
identityd
SigmoidSigmoidinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
Sigmoidl
IdentityIdentitySigmoid:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
F__inference_dropout_26_layer_call_and_return_conditional_losses_178217

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *W¢?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeÝ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
dtype0*
seed±ÿå)*
seed2%2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *{'W>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
dropout/Mul_1r
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs

]
A__inference_norm5_layer_call_and_return_conditional_losses_175542

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  2	
Const_1
clip_by_value/MinimumMinimummul:z:0Const_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
clip_by_value/Minimum
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
clip_by_valuef
SqrtSqrtclip_by_value:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
SqrtS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
add/yl
addAddV2Sqrt:y:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
add[
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
	truediv/xy
truedivRealDivtruediv/x:output:0add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truedivl
IdentityIdentitytruediv:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_175825

inputs

identity_1g
IdentityIdentityinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identityv

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs


R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_175370

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:`*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:`2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:`2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:`*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:`2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:`*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:`2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:`*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:`2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
batchnorm/add_1è
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs


*__inference_conv1d_35_layer_call_fn_177958

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_35_layer_call_and_return_conditional_losses_1757442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷
\
@__inference_mer3_layer_call_and_return_conditional_losses_175938

inputs
identityj
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis
	ReverseV2	ReverseV2inputsReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2s
IdentityIdentityReverseV2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
k
%__inference_mer1_layer_call_fn_178320

inputs
unknown
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer1_layer_call_and_return_conditional_losses_1760012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
J
.__inference_activation_35_layer_call_fn_177968

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_35_layer_call_and_return_conditional_losses_1757652
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs

]
A__inference_norm5_layer_call_and_return_conditional_losses_175527

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  2	
Const_1
clip_by_value/MinimumMinimummul:z:0Const_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
clip_by_value/Minimum
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
clip_by_valuef
SqrtSqrtclip_by_value:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
SqrtS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
add/yl
addAddV2Sqrt:y:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
add[
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
	truediv/xy
truedivRealDivtruediv/x:output:0add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truedivl
IdentityIdentitytruediv:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
B
&__inference_norm7_layer_call_fn_177779

inputs
identityÈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm7_layer_call_and_return_conditional_losses_1755922
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
A
%__inference_mer7_layer_call_fn_178527

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer7_layer_call_and_return_conditional_losses_1762052
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_178438

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:`*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:`2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:`2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:`*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:`2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:`*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:`2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:`*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:`2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
batchnorm/add_1è
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs

\
@__inference_mer2_layer_call_and_return_conditional_losses_176107

inputs
identity[
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
	truediv/xx
truedivRealDivtruediv/x:output:0inputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truedivS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
add/yo
addAddV2truediv:z:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
addh
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
F__inference_dropout_25_layer_call_and_return_conditional_losses_175820

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *,?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeÝ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
dtype0*
seed±ÿå)*
seed2%2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ûe=2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
dropout/Mul_1r
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
ë
k
A__inference_norm6_layer_call_and_return_conditional_losses_175561

inputs
inputs_1
identityb
mulMulinputsinputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
e
I__inference_activation_38_layer_call_and_return_conditional_losses_176342

inputs
identityd
SigmoidSigmoidinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
Sigmoidl
IdentityIdentitySigmoid:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥§
ñ
E__inference_conv_segm_layer_call_and_return_conditional_losses_176384
input_8
sinc_175406
norm0_175430
norm4_175509
conv1d_34_175646
conv1d_34_175648!
batch_normalization_27_175690!
batch_normalization_27_175692!
batch_normalization_27_175694!
batch_normalization_27_175696
conv1d_35_175755
conv1d_35_175757!
batch_normalization_28_175799!
batch_normalization_28_175801!
batch_normalization_28_175803!
batch_normalization_28_175805
conv1d_36_175864
conv1d_36_175866!
batch_normalization_29_175923!
batch_normalization_29_175925!
batch_normalization_29_175927!
batch_normalization_29_175929
mer1_176010
mer4_176036
conv1d_37_176065
conv1d_37_176067!
batch_normalization_30_176182!
batch_normalization_30_176184!
batch_normalization_30_176186!
batch_normalization_30_176188
conv1d_38_176332
conv1d_38_176334
identity¢.batch_normalization_27/StatefulPartitionedCall¢.batch_normalization_28/StatefulPartitionedCall¢.batch_normalization_29/StatefulPartitionedCall¢.batch_normalization_30/StatefulPartitionedCall¢!conv1d_34/StatefulPartitionedCall¢!conv1d_35/StatefulPartitionedCall¢!conv1d_36/StatefulPartitionedCall¢!conv1d_37/StatefulPartitionedCall¢!conv1d_38/StatefulPartitionedCall¢"dropout_24/StatefulPartitionedCall¢"dropout_25/StatefulPartitionedCall¢"dropout_26/StatefulPartitionedCall¢"dropout_27/StatefulPartitionedCall¢mer1/StatefulPartitionedCall¢mer4/StatefulPartitionedCall¢norm0/StatefulPartitionedCall¢norm4/StatefulPartitionedCall¢sinc/StatefulPartitionedCall
sinc/StatefulPartitionedCallStatefulPartitionedCallinput_8sinc_175406*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_sinc_layer_call_and_return_conditional_losses_1753972
sinc/StatefulPartitionedCall¦
norm0/StatefulPartitionedCallStatefulPartitionedCall%sinc/StatefulPartitionedCall:output:0norm0_175430*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm0_layer_call_and_return_conditional_losses_1754212
norm0/StatefulPartitionedCallý
norm1/PartitionedCallPartitionedCall&norm0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm1_layer_call_and_return_conditional_losses_1754392
norm1/PartitionedCallÿ
norm2/PartitionedCallPartitionedCallinput_8norm1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm2_layer_call_and_return_conditional_losses_1754642
norm2/PartitionedCall
norm3/PartitionedCallPartitionedCallnorm2/PartitionedCall:output:0norm2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm3_layer_call_and_return_conditional_losses_1754792
norm3/PartitionedCall
norm4/StatefulPartitionedCallStatefulPartitionedCallnorm3/PartitionedCall:output:0norm4_175509*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm4_layer_call_and_return_conditional_losses_1755002
norm4/StatefulPartitionedCallý
norm5/PartitionedCallPartitionedCall&norm4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm5_layer_call_and_return_conditional_losses_1755272
norm5/PartitionedCallÿ
norm6/PartitionedCallPartitionedCallinput_8norm5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm6_layer_call_and_return_conditional_losses_1755612
norm6/PartitionedCallì
norm7/PartitionedCallPartitionedCallnorm6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm7_layer_call_and_return_conditional_losses_1755812
norm7/PartitionedCall
norm8/PartitionedCallPartitionedCallnorm6/PartitionedCall:output:0norm7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm8_layer_call_and_return_conditional_losses_1756112
norm8/PartitionedCallÃ
!conv1d_34/StatefulPartitionedCallStatefulPartitionedCallnorm8/PartitionedCall:output:0conv1d_34_175646conv1d_34_175648*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_34_layer_call_and_return_conditional_losses_1756352#
!conv1d_34/StatefulPartitionedCall
activation_34/PartitionedCallPartitionedCall*conv1d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_34_layer_call_and_return_conditional_losses_1756562
activation_34/PartitionedCallÌ
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall&activation_34/PartitionedCall:output:0batch_normalization_27_175690batch_normalization_27_175692batch_normalization_27_175694batch_normalization_27_175696*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_17491720
.batch_normalization_27/StatefulPartitionedCallµ
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_1757112$
"dropout_24/StatefulPartitionedCallÐ
!conv1d_35/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0conv1d_35_175755conv1d_35_175757*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_35_layer_call_and_return_conditional_losses_1757442#
!conv1d_35/StatefulPartitionedCall
activation_35/PartitionedCallPartitionedCall*conv1d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_35_layer_call_and_return_conditional_losses_1757652
activation_35/PartitionedCallÌ
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall&activation_35/PartitionedCall:output:0batch_normalization_28_175799batch_normalization_28_175801batch_normalization_28_175803batch_normalization_28_175805*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_17505720
.batch_normalization_28/StatefulPartitionedCallÚ
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_1758202$
"dropout_25/StatefulPartitionedCallÐ
!conv1d_36/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0conv1d_36_175864conv1d_36_175866*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_36_layer_call_and_return_conditional_losses_1758532#
!conv1d_36/StatefulPartitionedCall
activation_36/PartitionedCallPartitionedCall*conv1d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_36_layer_call_and_return_conditional_losses_1758742
activation_36/PartitionedCallå
mer0/PartitionedCallPartitionedCallinput_8input_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer0_layer_call_and_return_conditional_losses_1758882
mer0/PartitionedCallÌ
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall&activation_36/PartitionedCall:output:0batch_normalization_29_175923batch_normalization_29_175925batch_normalization_29_175927batch_normalization_29_175929*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_17519720
.batch_normalization_29/StatefulPartitionedCallñ
mer3/PartitionedCallPartitionedCallmer0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer3_layer_call_and_return_conditional_losses_1759382
mer3/PartitionedCallÚ
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_1759692$
"dropout_26/StatefulPartitionedCall
mer1/StatefulPartitionedCallStatefulPartitionedCallmer0/PartitionedCall:output:0mer1_176010*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer1_layer_call_and_return_conditional_losses_1760012
mer1/StatefulPartitionedCall
mer4/StatefulPartitionedCallStatefulPartitionedCallmer3/PartitionedCall:output:0mer4_176036*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer4_layer_call_and_return_conditional_losses_1760272
mer4/StatefulPartitionedCallÐ
!conv1d_37/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0conv1d_37_176065conv1d_37_176067*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_37_layer_call_and_return_conditional_losses_1760542#
!conv1d_37/StatefulPartitionedCallù
mer5/PartitionedCallPartitionedCall%mer4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer5_layer_call_and_return_conditional_losses_1760782
mer5/PartitionedCallù
mer2/PartitionedCallPartitionedCall%mer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer2_layer_call_and_return_conditional_losses_1761072
mer2/PartitionedCall
activation_37/PartitionedCallPartitionedCall*conv1d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_37_layer_call_and_return_conditional_losses_1761332
activation_37/PartitionedCall
mer6/PartitionedCallPartitionedCallmer5/PartitionedCall:output:0mer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer6_layer_call_and_return_conditional_losses_1761472
mer6/PartitionedCallÌ
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall&activation_37/PartitionedCall:output:0batch_normalization_30_176182batch_normalization_30_176184batch_normalization_30_176186batch_normalization_30_176188*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_17533720
.batch_normalization_30/StatefulPartitionedCallñ
mer7/PartitionedCallPartitionedCallmer6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer7_layer_call_and_return_conditional_losses_1761982
mer7/PartitionedCallÚ
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0#^dropout_26/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_1762302$
"dropout_27/StatefulPartitionedCallñ
mer8/PartitionedCallPartitionedCallmer7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer8_layer_call_and_return_conditional_losses_1762562
mer8/PartitionedCallñ
mer9/PartitionedCallPartitionedCallmer7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer9_layer_call_and_return_conditional_losses_1762852
mer9/PartitionedCallÐ
!conv1d_38/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0conv1d_38_176332conv1d_38_176334*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_38_layer_call_and_return_conditional_losses_1763212#
!conv1d_38/StatefulPartitionedCall
activation_38/PartitionedCallPartitionedCall*conv1d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_38_layer_call_and_return_conditional_losses_1763422
activation_38/PartitionedCall´
mer10/PartitionedCallPartitionedCallmer8/PartitionedCall:output:0mer7/PartitionedCall:output:0mer9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_mer10_layer_call_and_return_conditional_losses_1763582
mer10/PartitionedCall§
segm_out/PartitionedCallPartitionedCall&activation_38/PartitionedCall:output:0mer10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_segm_out_layer_call_and_return_conditional_losses_1763742
segm_out/PartitionedCall«
IdentityIdentity!segm_out/PartitionedCall:output:0/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall"^conv1d_34/StatefulPartitionedCall"^conv1d_35/StatefulPartitionedCall"^conv1d_36/StatefulPartitionedCall"^conv1d_37/StatefulPartitionedCall"^conv1d_38/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall^mer1/StatefulPartitionedCall^mer4/StatefulPartitionedCall^norm0/StatefulPartitionedCall^norm4/StatefulPartitionedCall^sinc/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*±
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::::::::::::2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2F
!conv1d_34/StatefulPartitionedCall!conv1d_34/StatefulPartitionedCall2F
!conv1d_35/StatefulPartitionedCall!conv1d_35/StatefulPartitionedCall2F
!conv1d_36/StatefulPartitionedCall!conv1d_36/StatefulPartitionedCall2F
!conv1d_37/StatefulPartitionedCall!conv1d_37/StatefulPartitionedCall2F
!conv1d_38/StatefulPartitionedCall!conv1d_38/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2<
mer1/StatefulPartitionedCallmer1/StatefulPartitionedCall2<
mer4/StatefulPartitionedCallmer4/StatefulPartitionedCall2>
norm0/StatefulPartitionedCallnorm0/StatefulPartitionedCall2>
norm4/StatefulPartitionedCallnorm4/StatefulPartitionedCall2<
sinc/StatefulPartitionedCallsinc/StatefulPartitionedCall:] Y
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_8
ò
ø
E__inference_conv1d_36_layer_call_and_return_conditional_losses_178092

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0H*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:0H2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:H*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2	
BiasAdd¯
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
ÂÅ
´
E__inference_conv_segm_layer_call_and_return_conditional_losses_177458

inputs4
0sinc_conv1d_expanddims_1_readvariableop_resource5
1norm0_conv1d_expanddims_1_readvariableop_resource5
1norm4_conv1d_expanddims_1_readvariableop_resource9
5conv1d_34_conv1d_expanddims_1_readvariableop_resource-
)conv1d_34_biasadd_readvariableop_resource<
8batch_normalization_27_batchnorm_readvariableop_resource@
<batch_normalization_27_batchnorm_mul_readvariableop_resource>
:batch_normalization_27_batchnorm_readvariableop_1_resource>
:batch_normalization_27_batchnorm_readvariableop_2_resource9
5conv1d_35_conv1d_expanddims_1_readvariableop_resource-
)conv1d_35_biasadd_readvariableop_resource<
8batch_normalization_28_batchnorm_readvariableop_resource@
<batch_normalization_28_batchnorm_mul_readvariableop_resource>
:batch_normalization_28_batchnorm_readvariableop_1_resource>
:batch_normalization_28_batchnorm_readvariableop_2_resource9
5conv1d_36_conv1d_expanddims_1_readvariableop_resource-
)conv1d_36_biasadd_readvariableop_resource<
8batch_normalization_29_batchnorm_readvariableop_resource@
<batch_normalization_29_batchnorm_mul_readvariableop_resource>
:batch_normalization_29_batchnorm_readvariableop_1_resource>
:batch_normalization_29_batchnorm_readvariableop_2_resource4
0mer1_conv1d_expanddims_1_readvariableop_resource4
0mer4_conv1d_expanddims_1_readvariableop_resource9
5conv1d_37_conv1d_expanddims_1_readvariableop_resource-
)conv1d_37_biasadd_readvariableop_resource<
8batch_normalization_30_batchnorm_readvariableop_resource@
<batch_normalization_30_batchnorm_mul_readvariableop_resource>
:batch_normalization_30_batchnorm_readvariableop_1_resource>
:batch_normalization_30_batchnorm_readvariableop_2_resource9
5conv1d_38_conv1d_expanddims_1_readvariableop_resource-
)conv1d_38_biasadd_readvariableop_resource
identity¢/batch_normalization_27/batchnorm/ReadVariableOp¢1batch_normalization_27/batchnorm/ReadVariableOp_1¢1batch_normalization_27/batchnorm/ReadVariableOp_2¢3batch_normalization_27/batchnorm/mul/ReadVariableOp¢/batch_normalization_28/batchnorm/ReadVariableOp¢1batch_normalization_28/batchnorm/ReadVariableOp_1¢1batch_normalization_28/batchnorm/ReadVariableOp_2¢3batch_normalization_28/batchnorm/mul/ReadVariableOp¢/batch_normalization_29/batchnorm/ReadVariableOp¢1batch_normalization_29/batchnorm/ReadVariableOp_1¢1batch_normalization_29/batchnorm/ReadVariableOp_2¢3batch_normalization_29/batchnorm/mul/ReadVariableOp¢/batch_normalization_30/batchnorm/ReadVariableOp¢1batch_normalization_30/batchnorm/ReadVariableOp_1¢1batch_normalization_30/batchnorm/ReadVariableOp_2¢3batch_normalization_30/batchnorm/mul/ReadVariableOp¢ conv1d_34/BiasAdd/ReadVariableOp¢,conv1d_34/conv1d/ExpandDims_1/ReadVariableOp¢ conv1d_35/BiasAdd/ReadVariableOp¢,conv1d_35/conv1d/ExpandDims_1/ReadVariableOp¢ conv1d_36/BiasAdd/ReadVariableOp¢,conv1d_36/conv1d/ExpandDims_1/ReadVariableOp¢ conv1d_37/BiasAdd/ReadVariableOp¢,conv1d_37/conv1d/ExpandDims_1/ReadVariableOp¢ conv1d_38/BiasAdd/ReadVariableOp¢,conv1d_38/conv1d/ExpandDims_1/ReadVariableOp¢'mer1/conv1d/ExpandDims_1/ReadVariableOp¢'mer4/conv1d/ExpandDims_1/ReadVariableOp¢(norm0/conv1d/ExpandDims_1/ReadVariableOp¢(norm4/conv1d/ExpandDims_1/ReadVariableOp¢'sinc/conv1d/ExpandDims_1/ReadVariableOp
sinc/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
sinc/conv1d/ExpandDims/dim®
sinc/conv1d/ExpandDims
ExpandDimsinputs#sinc/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
sinc/conv1d/ExpandDimsÇ
'sinc/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0sinc_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02)
'sinc/conv1d/ExpandDims_1/ReadVariableOp~
sinc/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
sinc/conv1d/ExpandDims_1/dimË
sinc/conv1d/ExpandDims_1
ExpandDims/sinc/conv1d/ExpandDims_1/ReadVariableOp:value:0%sinc/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
sinc/conv1d/ExpandDims_1Ó
sinc/conv1dConv2Dsinc/conv1d/ExpandDims:output:0!sinc/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
sinc/conv1dª
sinc/conv1d/SqueezeSqueezesinc/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
sinc/conv1d/Squeeze
norm0/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
norm0/conv1d/ExpandDims/dimÇ
norm0/conv1d/ExpandDims
ExpandDimssinc/conv1d/Squeeze:output:0$norm0/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
norm0/conv1d/ExpandDimsË
(norm0/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp1norm0_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:­ *
dtype02*
(norm0/conv1d/ExpandDims_1/ReadVariableOp
norm0/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
norm0/conv1d/ExpandDims_1/dimÐ
norm0/conv1d/ExpandDims_1
ExpandDims0norm0/conv1d/ExpandDims_1/ReadVariableOp:value:0&norm0/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:­ 2
norm0/conv1d/ExpandDims_1×
norm0/conv1dConv2D norm0/conv1d/ExpandDims:output:0"norm0/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
norm0/conv1d­
norm0/conv1d/SqueezeSqueezenorm0/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
norm0/conv1d/Squeeze_
norm1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
norm1/mul/y
	norm1/mulMulnorm0/conv1d/Squeeze:output:0norm1/mul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm1/muls
	norm2/subSubinputsnorm1/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm2/subz
	norm3/mulMulnorm2/sub:z:0norm2/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm3/mul
norm4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
norm4/conv1d/ExpandDims/dim¸
norm4/conv1d/ExpandDims
ExpandDimsnorm3/mul:z:0$norm4/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
norm4/conv1d/ExpandDimsË
(norm4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp1norm4_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:­*
dtype02*
(norm4/conv1d/ExpandDims_1/ReadVariableOp
norm4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
norm4/conv1d/ExpandDims_1/dimÐ
norm4/conv1d/ExpandDims_1
ExpandDims0norm4/conv1d/ExpandDims_1/ReadVariableOp:value:0&norm4/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:­2
norm4/conv1d/ExpandDims_1×
norm4/conv1dConv2D norm4/conv1d/ExpandDims:output:0"norm4/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
norm4/conv1d­
norm4/conv1d/SqueezeSqueezenorm4/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
norm4/conv1d/Squeeze_
norm5/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
norm5/mul/y
	norm5/mulMulnorm4/conv1d/Squeeze:output:0norm5/mul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm5/mul_
norm5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
norm5/Constc
norm5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  2
norm5/Const_1«
norm5/clip_by_value/MinimumMinimumnorm5/mul:z:0norm5/Const_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
norm5/clip_by_value/Minimum«
norm5/clip_by_valueMaximumnorm5/clip_by_value/Minimum:z:0norm5/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
norm5/clip_by_valuex

norm5/SqrtSqrtnorm5/clip_by_value:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

norm5/Sqrt_
norm5/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
norm5/add/y
	norm5/addAddV2norm5/Sqrt:y:0norm5/add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm5/addg
norm5/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
norm5/truediv/x
norm5/truedivRealDivnorm5/truediv/x:output:0norm5/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
norm5/truedivw
	norm6/mulMulinputsnorm5/truediv:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm6/mulk
	norm7/AbsAbsnorm6/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm7/Abs|
norm7/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
norm7/Max/reduction_indices
	norm7/MaxMaxnorm7/Abs:y:0$norm7/Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
	norm7/Max_
norm7/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
norm7/add/y
	norm7/addAddV2norm7/Max:output:0norm7/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	norm7/addg
norm7/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
norm7/truediv/x
norm7/truedivRealDivnorm7/truediv/x:output:0norm7/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
norm7/truediv~
	norm8/mulMulnorm6/mul:z:0norm7/truediv:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	norm8/mul
conv1d_34/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_34/conv1d/ExpandDims/dimÄ
conv1d_34/conv1d/ExpandDims
ExpandDimsnorm8/mul:z:0(conv1d_34/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d_34/conv1d/ExpandDimsÖ
,conv1d_34/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_34_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02.
,conv1d_34/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_34/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_34/conv1d/ExpandDims_1/dimß
conv1d_34/conv1d/ExpandDims_1
ExpandDims4conv1d_34/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_34/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d_34/conv1d/ExpandDims_1ç
conv1d_34/conv1dConv2D$conv1d_34/conv1d/ExpandDims:output:0&conv1d_34/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d_34/conv1d¹
conv1d_34/conv1d/SqueezeSqueezeconv1d_34/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_34/conv1d/Squeezeª
 conv1d_34/BiasAdd/ReadVariableOpReadVariableOp)conv1d_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv1d_34/BiasAdd/ReadVariableOp½
conv1d_34/BiasAddBiasAdd!conv1d_34/conv1d/Squeeze:output:0(conv1d_34/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d_34/BiasAdd
activation_34/ReluReluconv1d_34/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
activation_34/Relu×
/batch_normalization_27/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_27_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype021
/batch_normalization_27/batchnorm/ReadVariableOp
&batch_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_27/batchnorm/add/yä
$batch_normalization_27/batchnorm/addAddV27batch_normalization_27/batchnorm/ReadVariableOp:value:0/batch_normalization_27/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_27/batchnorm/add¨
&batch_normalization_27/batchnorm/RsqrtRsqrt(batch_normalization_27/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_27/batchnorm/Rsqrtã
3batch_normalization_27/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_27_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization_27/batchnorm/mul/ReadVariableOpá
$batch_normalization_27/batchnorm/mulMul*batch_normalization_27/batchnorm/Rsqrt:y:0;batch_normalization_27/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_27/batchnorm/mulâ
&batch_normalization_27/batchnorm/mul_1Mul activation_34/Relu:activations:0(batch_normalization_27/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_27/batchnorm/mul_1Ý
1batch_normalization_27/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_27_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype023
1batch_normalization_27/batchnorm/ReadVariableOp_1á
&batch_normalization_27/batchnorm/mul_2Mul9batch_normalization_27/batchnorm/ReadVariableOp_1:value:0(batch_normalization_27/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_27/batchnorm/mul_2Ý
1batch_normalization_27/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_27_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype023
1batch_normalization_27/batchnorm/ReadVariableOp_2ß
$batch_normalization_27/batchnorm/subSub9batch_normalization_27/batchnorm/ReadVariableOp_2:value:0*batch_normalization_27/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_27/batchnorm/subî
&batch_normalization_27/batchnorm/add_1AddV2*batch_normalization_27/batchnorm/mul_1:z:0(batch_normalization_27/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_27/batchnorm/add_1¡
dropout_24/IdentityIdentity*batch_normalization_27/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout_24/Identity
conv1d_35/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_35/conv1d/ExpandDims/dimÓ
conv1d_35/conv1d/ExpandDims
ExpandDimsdropout_24/Identity:output:0(conv1d_35/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d_35/conv1d/ExpandDimsÖ
,conv1d_35/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_35_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0*
dtype02.
,conv1d_35/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_35/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_35/conv1d/ExpandDims_1/dimß
conv1d_35/conv1d/ExpandDims_1
ExpandDims4conv1d_35/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_35/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:02
conv1d_35/conv1d/ExpandDims_1ç
conv1d_35/conv1dConv2D$conv1d_35/conv1d/ExpandDims:output:0&conv1d_35/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
paddingSAME*
strides
2
conv1d_35/conv1d¹
conv1d_35/conv1d/SqueezeSqueezeconv1d_35/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_35/conv1d/Squeezeª
 conv1d_35/BiasAdd/ReadVariableOpReadVariableOp)conv1d_35_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv1d_35/BiasAdd/ReadVariableOp½
conv1d_35/BiasAddBiasAdd!conv1d_35/conv1d/Squeeze:output:0(conv1d_35/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
conv1d_35/BiasAdd
activation_35/ReluReluconv1d_35/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
activation_35/Relu×
/batch_normalization_28/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_28_batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype021
/batch_normalization_28/batchnorm/ReadVariableOp
&batch_normalization_28/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_28/batchnorm/add/yä
$batch_normalization_28/batchnorm/addAddV27batch_normalization_28/batchnorm/ReadVariableOp:value:0/batch_normalization_28/batchnorm/add/y:output:0*
T0*
_output_shapes
:02&
$batch_normalization_28/batchnorm/add¨
&batch_normalization_28/batchnorm/RsqrtRsqrt(batch_normalization_28/batchnorm/add:z:0*
T0*
_output_shapes
:02(
&batch_normalization_28/batchnorm/Rsqrtã
3batch_normalization_28/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_28_batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype025
3batch_normalization_28/batchnorm/mul/ReadVariableOpá
$batch_normalization_28/batchnorm/mulMul*batch_normalization_28/batchnorm/Rsqrt:y:0;batch_normalization_28/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:02&
$batch_normalization_28/batchnorm/mulâ
&batch_normalization_28/batchnorm/mul_1Mul activation_35/Relu:activations:0(batch_normalization_28/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02(
&batch_normalization_28/batchnorm/mul_1Ý
1batch_normalization_28/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_28_batchnorm_readvariableop_1_resource*
_output_shapes
:0*
dtype023
1batch_normalization_28/batchnorm/ReadVariableOp_1á
&batch_normalization_28/batchnorm/mul_2Mul9batch_normalization_28/batchnorm/ReadVariableOp_1:value:0(batch_normalization_28/batchnorm/mul:z:0*
T0*
_output_shapes
:02(
&batch_normalization_28/batchnorm/mul_2Ý
1batch_normalization_28/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_28_batchnorm_readvariableop_2_resource*
_output_shapes
:0*
dtype023
1batch_normalization_28/batchnorm/ReadVariableOp_2ß
$batch_normalization_28/batchnorm/subSub9batch_normalization_28/batchnorm/ReadVariableOp_2:value:0*batch_normalization_28/batchnorm/mul_2:z:0*
T0*
_output_shapes
:02&
$batch_normalization_28/batchnorm/subî
&batch_normalization_28/batchnorm/add_1AddV2*batch_normalization_28/batchnorm/mul_1:z:0(batch_normalization_28/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02(
&batch_normalization_28/batchnorm/add_1¡
dropout_25/IdentityIdentity*batch_normalization_28/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
dropout_25/Identity
conv1d_36/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_36/conv1d/ExpandDims/dimÓ
conv1d_36/conv1d/ExpandDims
ExpandDimsdropout_25/Identity:output:0(conv1d_36/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
conv1d_36/conv1d/ExpandDimsÖ
,conv1d_36/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_36_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0H*
dtype02.
,conv1d_36/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_36/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_36/conv1d/ExpandDims_1/dimß
conv1d_36/conv1d/ExpandDims_1
ExpandDims4conv1d_36/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_36/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:0H2
conv1d_36/conv1d/ExpandDims_1ç
conv1d_36/conv1dConv2D$conv1d_36/conv1d/ExpandDims:output:0&conv1d_36/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
paddingSAME*
strides
2
conv1d_36/conv1d¹
conv1d_36/conv1d/SqueezeSqueezeconv1d_36/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_36/conv1d/Squeezeª
 conv1d_36/BiasAdd/ReadVariableOpReadVariableOp)conv1d_36_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02"
 conv1d_36/BiasAdd/ReadVariableOp½
conv1d_36/BiasAddBiasAdd!conv1d_36/conv1d/Squeeze:output:0(conv1d_36/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
conv1d_36/BiasAdd
activation_36/ReluReluconv1d_36/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
activation_36/Reluj
mer0/mulMulinputsinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer0/mul×
/batch_normalization_29/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_29_batchnorm_readvariableop_resource*
_output_shapes
:H*
dtype021
/batch_normalization_29/batchnorm/ReadVariableOp
&batch_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_29/batchnorm/add/yä
$batch_normalization_29/batchnorm/addAddV27batch_normalization_29/batchnorm/ReadVariableOp:value:0/batch_normalization_29/batchnorm/add/y:output:0*
T0*
_output_shapes
:H2&
$batch_normalization_29/batchnorm/add¨
&batch_normalization_29/batchnorm/RsqrtRsqrt(batch_normalization_29/batchnorm/add:z:0*
T0*
_output_shapes
:H2(
&batch_normalization_29/batchnorm/Rsqrtã
3batch_normalization_29/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_29_batchnorm_mul_readvariableop_resource*
_output_shapes
:H*
dtype025
3batch_normalization_29/batchnorm/mul/ReadVariableOpá
$batch_normalization_29/batchnorm/mulMul*batch_normalization_29/batchnorm/Rsqrt:y:0;batch_normalization_29/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:H2&
$batch_normalization_29/batchnorm/mulâ
&batch_normalization_29/batchnorm/mul_1Mul activation_36/Relu:activations:0(batch_normalization_29/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2(
&batch_normalization_29/batchnorm/mul_1Ý
1batch_normalization_29/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_29_batchnorm_readvariableop_1_resource*
_output_shapes
:H*
dtype023
1batch_normalization_29/batchnorm/ReadVariableOp_1á
&batch_normalization_29/batchnorm/mul_2Mul9batch_normalization_29/batchnorm/ReadVariableOp_1:value:0(batch_normalization_29/batchnorm/mul:z:0*
T0*
_output_shapes
:H2(
&batch_normalization_29/batchnorm/mul_2Ý
1batch_normalization_29/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_29_batchnorm_readvariableop_2_resource*
_output_shapes
:H*
dtype023
1batch_normalization_29/batchnorm/ReadVariableOp_2ß
$batch_normalization_29/batchnorm/subSub9batch_normalization_29/batchnorm/ReadVariableOp_2:value:0*batch_normalization_29/batchnorm/mul_2:z:0*
T0*
_output_shapes
:H2&
$batch_normalization_29/batchnorm/subî
&batch_normalization_29/batchnorm/add_1AddV2*batch_normalization_29/batchnorm/mul_1:z:0(batch_normalization_29/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2(
&batch_normalization_29/batchnorm/add_1t
mer3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
mer3/ReverseV2/axis
mer3/ReverseV2	ReverseV2mer0/mul:z:0mer3/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer3/ReverseV2¡
dropout_26/IdentityIdentity*batch_normalization_29/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
dropout_26/Identity
mer1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"        d               2
mer1/Pad/paddings
mer1/PadPadmer0/mul:z:0mer1/Pad/paddings:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer1/Pad
mer1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
mer1/conv1d/ExpandDims/dim¹
mer1/conv1d/ExpandDims
ExpandDimsmer1/Pad:output:0#mer1/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer1/conv1d/ExpandDimsÇ
'mer1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0mer1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:e*
dtype02)
'mer1/conv1d/ExpandDims_1/ReadVariableOp~
mer1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
mer1/conv1d/ExpandDims_1/dimË
mer1/conv1d/ExpandDims_1
ExpandDims/mer1/conv1d/ExpandDims_1/ReadVariableOp:value:0%mer1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:e2
mer1/conv1d/ExpandDims_1Ô
mer1/conv1dConv2Dmer1/conv1d/ExpandDims:output:0!mer1/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
mer1/conv1dª
mer1/conv1d/SqueezeSqueezemer1/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
mer1/conv1d/Squeeze
mer4/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"        d               2
mer4/Pad/paddings
mer4/PadPadmer3/ReverseV2:output:0mer4/Pad/paddings:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer4/Pad
mer4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
mer4/conv1d/ExpandDims/dim¹
mer4/conv1d/ExpandDims
ExpandDimsmer4/Pad:output:0#mer4/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer4/conv1d/ExpandDimsÇ
'mer4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp0mer4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:e*
dtype02)
'mer4/conv1d/ExpandDims_1/ReadVariableOp~
mer4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
mer4/conv1d/ExpandDims_1/dimË
mer4/conv1d/ExpandDims_1
ExpandDims/mer4/conv1d/ExpandDims_1/ReadVariableOp:value:0%mer4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:e2
mer4/conv1d/ExpandDims_1Ô
mer4/conv1dConv2Dmer4/conv1d/ExpandDims:output:0!mer4/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
mer4/conv1dª
mer4/conv1d/SqueezeSqueezemer4/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
mer4/conv1d/Squeeze
conv1d_37/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_37/conv1d/ExpandDims/dimÓ
conv1d_37/conv1d/ExpandDims
ExpandDimsdropout_26/Identity:output:0(conv1d_37/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
conv1d_37/conv1d/ExpandDimsÖ
,conv1d_37/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_37_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:H`*
dtype02.
,conv1d_37/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_37/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_37/conv1d/ExpandDims_1/dimß
conv1d_37/conv1d/ExpandDims_1
ExpandDims4conv1d_37/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_37/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:H`2
conv1d_37/conv1d/ExpandDims_1ç
conv1d_37/conv1dConv2D$conv1d_37/conv1d/ExpandDims:output:0&conv1d_37/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
paddingSAME*
strides
2
conv1d_37/conv1d¹
conv1d_37/conv1d/SqueezeSqueezeconv1d_37/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_37/conv1d/Squeezeª
 conv1d_37/BiasAdd/ReadVariableOpReadVariableOp)conv1d_37_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02"
 conv1d_37/BiasAdd/ReadVariableOp½
conv1d_37/BiasAddBiasAdd!conv1d_37/conv1d/Squeeze:output:0(conv1d_37/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
conv1d_37/BiasAdde
mer5/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
mer5/truediv/y
mer5/truedivRealDivmer4/conv1d/Squeeze:output:0mer5/truediv/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer5/truedivt
mer5/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
mer5/ReverseV2/axis
mer5/ReverseV2	ReverseV2mer5/truediv:z:0mer5/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer5/ReverseV2e
mer2/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
mer2/truediv/x
mer2/truedivRealDivmer2/truediv/x:output:0mer1/conv1d/Squeeze:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer2/truediv]

mer2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2

mer2/add/y
mer2/addAddV2mer2/truediv:z:0mer2/add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer2/add
activation_37/ReluReluconv1d_37/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
activation_37/Relu
mer6/mulMulmer5/ReverseV2:output:0mer2/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer6/mul×
/batch_normalization_30/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_30_batchnorm_readvariableop_resource*
_output_shapes
:`*
dtype021
/batch_normalization_30/batchnorm/ReadVariableOp
&batch_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_30/batchnorm/add/yä
$batch_normalization_30/batchnorm/addAddV27batch_normalization_30/batchnorm/ReadVariableOp:value:0/batch_normalization_30/batchnorm/add/y:output:0*
T0*
_output_shapes
:`2&
$batch_normalization_30/batchnorm/add¨
&batch_normalization_30/batchnorm/RsqrtRsqrt(batch_normalization_30/batchnorm/add:z:0*
T0*
_output_shapes
:`2(
&batch_normalization_30/batchnorm/Rsqrtã
3batch_normalization_30/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_30_batchnorm_mul_readvariableop_resource*
_output_shapes
:`*
dtype025
3batch_normalization_30/batchnorm/mul/ReadVariableOpá
$batch_normalization_30/batchnorm/mulMul*batch_normalization_30/batchnorm/Rsqrt:y:0;batch_normalization_30/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:`2&
$batch_normalization_30/batchnorm/mulâ
&batch_normalization_30/batchnorm/mul_1Mul activation_37/Relu:activations:0(batch_normalization_30/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2(
&batch_normalization_30/batchnorm/mul_1Ý
1batch_normalization_30/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_30_batchnorm_readvariableop_1_resource*
_output_shapes
:`*
dtype023
1batch_normalization_30/batchnorm/ReadVariableOp_1á
&batch_normalization_30/batchnorm/mul_2Mul9batch_normalization_30/batchnorm/ReadVariableOp_1:value:0(batch_normalization_30/batchnorm/mul:z:0*
T0*
_output_shapes
:`2(
&batch_normalization_30/batchnorm/mul_2Ý
1batch_normalization_30/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_30_batchnorm_readvariableop_2_resource*
_output_shapes
:`*
dtype023
1batch_normalization_30/batchnorm/ReadVariableOp_2ß
$batch_normalization_30/batchnorm/subSub9batch_normalization_30/batchnorm/ReadVariableOp_2:value:0*batch_normalization_30/batchnorm/mul_2:z:0*
T0*
_output_shapes
:`2&
$batch_normalization_30/batchnorm/subî
&batch_normalization_30/batchnorm/add_1AddV2*batch_normalization_30/batchnorm/mul_1:z:0(batch_normalization_30/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2(
&batch_normalization_30/batchnorm/add_1e
mer7/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
mer7/Greater/y
mer7/GreaterGreatermer6/mul:z:0mer7/Greater/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer7/Greater~
	mer7/CastCastmer7/Greater:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	mer7/Cast¡
dropout_27/IdentityIdentity*batch_normalization_30/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
dropout_27/Identity]

mer8/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2

mer8/mul/y~
mer8/mulMulmer7/Cast:y:0mer8/mul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer8/mul]

mer8/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2

mer8/add/y
mer8/addAddV2mer8/mul:z:0mer8/add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer8/add]

mer9/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2

mer9/mul/y~
mer9/mulMulmer7/Cast:y:0mer9/mul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer9/mul]

mer9/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2

mer9/add/y
mer9/addAddV2mer9/mul:z:0mer9/add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

mer9/add
conv1d_38/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_38/conv1d/ExpandDims/dimÓ
conv1d_38/conv1d/ExpandDims
ExpandDimsdropout_27/Identity:output:0(conv1d_38/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
conv1d_38/conv1d/ExpandDims×
,conv1d_38/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_38_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`*
dtype02.
,conv1d_38/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_38/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_38/conv1d/ExpandDims_1/dimà
conv1d_38/conv1d/ExpandDims_1
ExpandDims4conv1d_38/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_38/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`2
conv1d_38/conv1d/ExpandDims_1ç
conv1d_38/conv1dConv2D$conv1d_38/conv1d/ExpandDims:output:0&conv1d_38/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d_38/conv1d¹
conv1d_38/conv1d/SqueezeSqueezeconv1d_38/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_38/conv1d/Squeezeª
 conv1d_38/BiasAdd/ReadVariableOpReadVariableOp)conv1d_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv1d_38/BiasAdd/ReadVariableOp½
conv1d_38/BiasAddBiasAdd!conv1d_38/conv1d/Squeeze:output:0(conv1d_38/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d_38/BiasAdd
activation_38/SigmoidSigmoidconv1d_38/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
activation_38/Sigmoidh
mer10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
mer10/concat/axis·
mer10/concatConcatV2mer8/add:z:0mer7/Cast:y:0mer9/add:z:0mer10/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mer10/concat
segm_out/mulMulactivation_38/Sigmoid:y:0mer10/concat:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
segm_out/mul
IdentityIdentitysegm_out/mul:z:00^batch_normalization_27/batchnorm/ReadVariableOp2^batch_normalization_27/batchnorm/ReadVariableOp_12^batch_normalization_27/batchnorm/ReadVariableOp_24^batch_normalization_27/batchnorm/mul/ReadVariableOp0^batch_normalization_28/batchnorm/ReadVariableOp2^batch_normalization_28/batchnorm/ReadVariableOp_12^batch_normalization_28/batchnorm/ReadVariableOp_24^batch_normalization_28/batchnorm/mul/ReadVariableOp0^batch_normalization_29/batchnorm/ReadVariableOp2^batch_normalization_29/batchnorm/ReadVariableOp_12^batch_normalization_29/batchnorm/ReadVariableOp_24^batch_normalization_29/batchnorm/mul/ReadVariableOp0^batch_normalization_30/batchnorm/ReadVariableOp2^batch_normalization_30/batchnorm/ReadVariableOp_12^batch_normalization_30/batchnorm/ReadVariableOp_24^batch_normalization_30/batchnorm/mul/ReadVariableOp!^conv1d_34/BiasAdd/ReadVariableOp-^conv1d_34/conv1d/ExpandDims_1/ReadVariableOp!^conv1d_35/BiasAdd/ReadVariableOp-^conv1d_35/conv1d/ExpandDims_1/ReadVariableOp!^conv1d_36/BiasAdd/ReadVariableOp-^conv1d_36/conv1d/ExpandDims_1/ReadVariableOp!^conv1d_37/BiasAdd/ReadVariableOp-^conv1d_37/conv1d/ExpandDims_1/ReadVariableOp!^conv1d_38/BiasAdd/ReadVariableOp-^conv1d_38/conv1d/ExpandDims_1/ReadVariableOp(^mer1/conv1d/ExpandDims_1/ReadVariableOp(^mer4/conv1d/ExpandDims_1/ReadVariableOp)^norm0/conv1d/ExpandDims_1/ReadVariableOp)^norm4/conv1d/ExpandDims_1/ReadVariableOp(^sinc/conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*±
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::::::::::::2b
/batch_normalization_27/batchnorm/ReadVariableOp/batch_normalization_27/batchnorm/ReadVariableOp2f
1batch_normalization_27/batchnorm/ReadVariableOp_11batch_normalization_27/batchnorm/ReadVariableOp_12f
1batch_normalization_27/batchnorm/ReadVariableOp_21batch_normalization_27/batchnorm/ReadVariableOp_22j
3batch_normalization_27/batchnorm/mul/ReadVariableOp3batch_normalization_27/batchnorm/mul/ReadVariableOp2b
/batch_normalization_28/batchnorm/ReadVariableOp/batch_normalization_28/batchnorm/ReadVariableOp2f
1batch_normalization_28/batchnorm/ReadVariableOp_11batch_normalization_28/batchnorm/ReadVariableOp_12f
1batch_normalization_28/batchnorm/ReadVariableOp_21batch_normalization_28/batchnorm/ReadVariableOp_22j
3batch_normalization_28/batchnorm/mul/ReadVariableOp3batch_normalization_28/batchnorm/mul/ReadVariableOp2b
/batch_normalization_29/batchnorm/ReadVariableOp/batch_normalization_29/batchnorm/ReadVariableOp2f
1batch_normalization_29/batchnorm/ReadVariableOp_11batch_normalization_29/batchnorm/ReadVariableOp_12f
1batch_normalization_29/batchnorm/ReadVariableOp_21batch_normalization_29/batchnorm/ReadVariableOp_22j
3batch_normalization_29/batchnorm/mul/ReadVariableOp3batch_normalization_29/batchnorm/mul/ReadVariableOp2b
/batch_normalization_30/batchnorm/ReadVariableOp/batch_normalization_30/batchnorm/ReadVariableOp2f
1batch_normalization_30/batchnorm/ReadVariableOp_11batch_normalization_30/batchnorm/ReadVariableOp_12f
1batch_normalization_30/batchnorm/ReadVariableOp_21batch_normalization_30/batchnorm/ReadVariableOp_22j
3batch_normalization_30/batchnorm/mul/ReadVariableOp3batch_normalization_30/batchnorm/mul/ReadVariableOp2D
 conv1d_34/BiasAdd/ReadVariableOp conv1d_34/BiasAdd/ReadVariableOp2\
,conv1d_34/conv1d/ExpandDims_1/ReadVariableOp,conv1d_34/conv1d/ExpandDims_1/ReadVariableOp2D
 conv1d_35/BiasAdd/ReadVariableOp conv1d_35/BiasAdd/ReadVariableOp2\
,conv1d_35/conv1d/ExpandDims_1/ReadVariableOp,conv1d_35/conv1d/ExpandDims_1/ReadVariableOp2D
 conv1d_36/BiasAdd/ReadVariableOp conv1d_36/BiasAdd/ReadVariableOp2\
,conv1d_36/conv1d/ExpandDims_1/ReadVariableOp,conv1d_36/conv1d/ExpandDims_1/ReadVariableOp2D
 conv1d_37/BiasAdd/ReadVariableOp conv1d_37/BiasAdd/ReadVariableOp2\
,conv1d_37/conv1d/ExpandDims_1/ReadVariableOp,conv1d_37/conv1d/ExpandDims_1/ReadVariableOp2D
 conv1d_38/BiasAdd/ReadVariableOp conv1d_38/BiasAdd/ReadVariableOp2\
,conv1d_38/conv1d/ExpandDims_1/ReadVariableOp,conv1d_38/conv1d/ExpandDims_1/ReadVariableOp2R
'mer1/conv1d/ExpandDims_1/ReadVariableOp'mer1/conv1d/ExpandDims_1/ReadVariableOp2R
'mer4/conv1d/ExpandDims_1/ReadVariableOp'mer4/conv1d/ExpandDims_1/ReadVariableOp2T
(norm0/conv1d/ExpandDims_1/ReadVariableOp(norm0/conv1d/ExpandDims_1/ReadVariableOp2T
(norm4/conv1d/ExpandDims_1/ReadVariableOp(norm4/conv1d/ExpandDims_1/ReadVariableOp2R
'sinc/conv1d/ExpandDims_1/ReadVariableOp'sinc/conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð
ª
7__inference_batch_normalization_29_layer_call_fn_178180

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_1751972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
Ã
A
%__inference_mer8_layer_call_fn_178572

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer8_layer_call_and_return_conditional_losses_1762562
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
d
F__inference_dropout_24_layer_call_and_return_conditional_losses_175716

inputs

identity_1g
IdentityIdentityinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityv

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
k
A__inference_norm2_layer_call_and_return_conditional_losses_175464

inputs
inputs_1
identityb
subSubinputsinputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
subh
IdentityIdentitysub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_176235

inputs

identity_1g
IdentityIdentityinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identityv

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
Ù
k
A__inference_norm8_layer_call_and_return_conditional_losses_175611

inputs
inputs_1
identityb
mulMulinputsinputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:SO
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
ø
E__inference_conv1d_36_layer_call_and_return_conditional_losses_175853

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0H*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:0H2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:H*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2	
BiasAdd¯
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
ý
d
F__inference_dropout_26_layer_call_and_return_conditional_losses_175974

inputs

identity_1g
IdentityIdentityinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identityv

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
ô0
É
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_175057

inputs
assignmovingavg_175032
assignmovingavg_1_175038)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:0*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:02
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices¶
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:0*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 2
moments/Squeeze_1Ì
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/175032*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_175032*
_output_shapes
:0*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/175032*
_output_shapes
:02
AssignMovingAvg/subè
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/175032*
_output_shapes
:02
AssignMovingAvg/mul¯
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_175032AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/175032*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÒ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/175038*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_175038*
_output_shapes
:0*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/175038*
_output_shapes
:02
AssignMovingAvg_1/subò
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/175038*
_output_shapes
:02
AssignMovingAvg_1/mul»
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_175038AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/175038*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:02
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:02
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:02
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:02
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:02
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
batchnorm/add_1À
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
Ã
\
@__inference_mer7_layer_call_and_return_conditional_losses_176205

inputs
identity[
	Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
	Greater/yx
GreaterGreaterinputsGreater/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
Greatero
CastCastGreater:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Casti
IdentityIdentityCast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô0
É
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_175197

inputs
assignmovingavg_175172
assignmovingavg_1_175178)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:H*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:H2
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices¶
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:H*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:H*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:H*
squeeze_dims
 2
moments/Squeeze_1Ì
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/175172*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_175172*
_output_shapes
:H*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/175172*
_output_shapes
:H2
AssignMovingAvg/subè
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/175172*
_output_shapes
:H2
AssignMovingAvg/mul¯
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_175172AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/175172*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÒ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/175178*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_175178*
_output_shapes
:H*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/175178*
_output_shapes
:H2
AssignMovingAvg_1/subò
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/175178*
_output_shapes
:H2
AssignMovingAvg_1/mul»
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_175178AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/175178*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:H2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:H2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:H*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:H2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:H2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:H*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:H2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
batchnorm/add_1À
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
ô0
É
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_178418

inputs
assignmovingavg_178393
assignmovingavg_1_178399)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:`*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:`2
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices¶
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:`*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 2
moments/Squeeze_1Ì
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/178393*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_178393*
_output_shapes
:`*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/178393*
_output_shapes
:`2
AssignMovingAvg/subè
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/178393*
_output_shapes
:`2
AssignMovingAvg/mul¯
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_178393AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/178393*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÒ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/178399*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_178399*
_output_shapes
:`*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/178399*
_output_shapes
:`2
AssignMovingAvg_1/subò
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/178399*
_output_shapes
:`2
AssignMovingAvg_1/mul»
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_178399AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/178399*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:`2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:`2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:`*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:`2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:`2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:`*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:`2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
batchnorm/add_1À
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
ô0
É
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_174917

inputs
assignmovingavg_174892
assignmovingavg_1_174898)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:2
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices¶
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1Ì
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/174892*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_174892*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/174892*
_output_shapes
:2
AssignMovingAvg/subè
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/174892*
_output_shapes
:2
AssignMovingAvg/mul¯
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_174892AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/174892*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÒ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/174898*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_174898*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/174898*
_output_shapes
:2
AssignMovingAvg_1/subò
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/174898*
_output_shapes
:2
AssignMovingAvg_1/mul»
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_174898AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/174898*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1À
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
A
%__inference_mer5_layer_call_fn_178356

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer5_layer_call_and_return_conditional_losses_1760862
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
e
I__inference_activation_34_layer_call_and_return_conditional_losses_177820

inputs
identity[
ReluReluinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relus
IdentityIdentityRelu:activations:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
\
@__inference_mer8_layer_call_and_return_conditional_losses_178559

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
add/yk
addAddV2mul:z:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
addh
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
A
%__inference_mer2_layer_call_fn_178382

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer2_layer_call_and_return_conditional_losses_1761152
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
ø
E__inference_conv1d_34_layer_call_and_return_conditional_losses_175635

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAdd¯
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
\
@__inference_mer7_layer_call_and_return_conditional_losses_178510

inputs
identity[
	Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
	Greater/yx
GreaterGreaterinputsGreater/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
Greatero
CastCastGreater:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Casti
IdentityIdentityCast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
ø
E__inference_conv1d_37_layer_call_and_return_conditional_losses_178269

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:H`*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:H`2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2	
BiasAdd¯
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
¼
Á
$__inference_signature_wrapper_176914
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*A
_read_only_resource_inputs#
!	
*2
config_proto" 

CPU

GPU2 *0J 8 **
f%R#
!__inference__wrapped_model_1748212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*±
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_8
û
\
@__inference_mer9_layer_call_and_return_conditional_losses_178585

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
add/yk
addAddV2mul:z:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
addh
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_175230

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:H*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:H2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:H2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:H*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:H2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:H*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:H2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:H*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:H2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
batchnorm/add_1è
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
Ó
]
A__inference_norm7_layer_call_and_return_conditional_losses_177769

inputs
identityX
AbsAbsinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Absp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indices
MaxMaxAbs:y:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
MaxS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
add/yg
addAddV2Max:output:0add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add[
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
	truediv/xp
truedivRealDivtruediv/x:output:0add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
truedivc
IdentityIdentitytruediv:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
m
A__inference_norm2_layer_call_and_return_conditional_losses_177658
inputs_0
inputs_1
identityd
subSubinputs_0inputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
subh
IdentityIdentitysub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
ê
j
@__inference_mer6_layer_call_and_return_conditional_losses_176147

inputs
inputs_1
identityb
mulMulinputsinputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô
ø
E__inference_conv1d_38_layer_call_and_return_conditional_losses_176321

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
conv1d/ExpandDims¹
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¸
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAdd¯
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
ë
e
I__inference_activation_37_layer_call_and_return_conditional_losses_178325

inputs
identity[
ReluReluinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
Relus
IdentityIdentityRelu:activations:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
Ò
R
&__inference_norm8_layer_call_fn_177791
inputs_0
inputs_1
identityÞ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm8_layer_call_and_return_conditional_losses_1756112
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
Ã
A
%__inference_mer5_layer_call_fn_178351

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer5_layer_call_and_return_conditional_losses_1760782
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
\
@__inference_mer8_layer_call_and_return_conditional_losses_176264

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
add/yk
addAddV2mul:z:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
addh
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
k
%__inference_sinc_layer_call_fn_177611

inputs
unknown
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_sinc_layer_call_and_return_conditional_losses_1753972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
B
&__inference_norm5_layer_call_fn_177730

inputs
identityÑ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm5_layer_call_and_return_conditional_losses_1755272
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
m
A__inference_norm8_layer_call_and_return_conditional_losses_177785
inputs_0
inputs_1
identityd
mulMulinputs_0inputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
Ã
¶
A__inference_norm0_layer_call_and_return_conditional_losses_177623

inputs/
+conv1d_expanddims_1_readvariableop_resource
identity¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
conv1d/ExpandDims¹
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:­ *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¸
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:­ 2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
IdentityIdentityconv1d/Squeeze:output:0#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ã
A
%__inference_mer3_layer_call_fn_178254

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer3_layer_call_and_return_conditional_losses_1759442
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
R
&__inference_norm2_layer_call_fn_177664
inputs_0
inputs_1
identityÞ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm2_layer_call_and_return_conditional_losses_1754642
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1


*__inference_conv1d_36_layer_call_fn_178101

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_36_layer_call_and_return_conditional_losses_1758532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs

]
A__inference_norm5_layer_call_and_return_conditional_losses_177725

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  2	
Const_1
clip_by_value/MinimumMinimummul:z:0Const_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
clip_by_value/Minimum
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
clip_by_valuef
SqrtSqrtclip_by_value:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
SqrtS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
add/yl
addAddV2Sqrt:y:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
add[
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
	truediv/xy
truedivRealDivtruediv/x:output:0add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truedivl
IdentityIdentitytruediv:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
J
.__inference_activation_38_layer_call_fn_178613

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_38_layer_call_and_return_conditional_losses_1763422
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö
p
D__inference_segm_out_layer_call_and_return_conditional_losses_178634
inputs_0
inputs_1
identityd
mulMulinputs_0inputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
â
Q
%__inference_mer6_layer_call_fn_178476
inputs_0
inputs_1
identityÝ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer6_layer_call_and_return_conditional_losses_1761472
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
ý
d
F__inference_dropout_26_layer_call_and_return_conditional_losses_178222

inputs

identity_1g
IdentityIdentityinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identityv

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
Å
B
&__inference_norm5_layer_call_fn_177735

inputs
identityÑ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm5_layer_call_and_return_conditional_losses_1755422
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç 
Ü
E__inference_conv_segm_layer_call_and_return_conditional_losses_176772

inputs
sinc_176669
norm0_176672
norm4_176678
conv1d_34_176685
conv1d_34_176687!
batch_normalization_27_176691!
batch_normalization_27_176693!
batch_normalization_27_176695!
batch_normalization_27_176697
conv1d_35_176701
conv1d_35_176703!
batch_normalization_28_176707!
batch_normalization_28_176709!
batch_normalization_28_176711!
batch_normalization_28_176713
conv1d_36_176717
conv1d_36_176719!
batch_normalization_29_176724!
batch_normalization_29_176726!
batch_normalization_29_176728!
batch_normalization_29_176730
mer1_176735
mer4_176738
conv1d_37_176741
conv1d_37_176743!
batch_normalization_30_176750!
batch_normalization_30_176752!
batch_normalization_30_176754!
batch_normalization_30_176756
conv1d_38_176763
conv1d_38_176765
identity¢.batch_normalization_27/StatefulPartitionedCall¢.batch_normalization_28/StatefulPartitionedCall¢.batch_normalization_29/StatefulPartitionedCall¢.batch_normalization_30/StatefulPartitionedCall¢!conv1d_34/StatefulPartitionedCall¢!conv1d_35/StatefulPartitionedCall¢!conv1d_36/StatefulPartitionedCall¢!conv1d_37/StatefulPartitionedCall¢!conv1d_38/StatefulPartitionedCall¢mer1/StatefulPartitionedCall¢mer4/StatefulPartitionedCall¢norm0/StatefulPartitionedCall¢norm4/StatefulPartitionedCall¢sinc/StatefulPartitionedCall
sinc/StatefulPartitionedCallStatefulPartitionedCallinputssinc_176669*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_sinc_layer_call_and_return_conditional_losses_1753972
sinc/StatefulPartitionedCall¦
norm0/StatefulPartitionedCallStatefulPartitionedCall%sinc/StatefulPartitionedCall:output:0norm0_176672*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm0_layer_call_and_return_conditional_losses_1754212
norm0/StatefulPartitionedCallý
norm1/PartitionedCallPartitionedCall&norm0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm1_layer_call_and_return_conditional_losses_1754452
norm1/PartitionedCallþ
norm2/PartitionedCallPartitionedCallinputsnorm1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm2_layer_call_and_return_conditional_losses_1754642
norm2/PartitionedCall
norm3/PartitionedCallPartitionedCallnorm2/PartitionedCall:output:0norm2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm3_layer_call_and_return_conditional_losses_1754792
norm3/PartitionedCall
norm4/StatefulPartitionedCallStatefulPartitionedCallnorm3/PartitionedCall:output:0norm4_176678*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm4_layer_call_and_return_conditional_losses_1755002
norm4/StatefulPartitionedCallý
norm5/PartitionedCallPartitionedCall&norm4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm5_layer_call_and_return_conditional_losses_1755422
norm5/PartitionedCallþ
norm6/PartitionedCallPartitionedCallinputsnorm5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm6_layer_call_and_return_conditional_losses_1755612
norm6/PartitionedCallì
norm7/PartitionedCallPartitionedCallnorm6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm7_layer_call_and_return_conditional_losses_1755922
norm7/PartitionedCall
norm8/PartitionedCallPartitionedCallnorm6/PartitionedCall:output:0norm7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm8_layer_call_and_return_conditional_losses_1756112
norm8/PartitionedCallÃ
!conv1d_34/StatefulPartitionedCallStatefulPartitionedCallnorm8/PartitionedCall:output:0conv1d_34_176685conv1d_34_176687*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_34_layer_call_and_return_conditional_losses_1756352#
!conv1d_34/StatefulPartitionedCall
activation_34/PartitionedCallPartitionedCall*conv1d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_34_layer_call_and_return_conditional_losses_1756562
activation_34/PartitionedCallÎ
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall&activation_34/PartitionedCall:output:0batch_normalization_27_176691batch_normalization_27_176693batch_normalization_27_176695batch_normalization_27_176697*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_17495020
.batch_normalization_27/StatefulPartitionedCall
dropout_24/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_1757162
dropout_24/PartitionedCallÈ
!conv1d_35/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0conv1d_35_176701conv1d_35_176703*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_35_layer_call_and_return_conditional_losses_1757442#
!conv1d_35/StatefulPartitionedCall
activation_35/PartitionedCallPartitionedCall*conv1d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_35_layer_call_and_return_conditional_losses_1757652
activation_35/PartitionedCallÎ
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall&activation_35/PartitionedCall:output:0batch_normalization_28_176707batch_normalization_28_176709batch_normalization_28_176711batch_normalization_28_176713*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_17509020
.batch_normalization_28/StatefulPartitionedCall
dropout_25/PartitionedCallPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_1758252
dropout_25/PartitionedCallÈ
!conv1d_36/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0conv1d_36_176717conv1d_36_176719*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_36_layer_call_and_return_conditional_losses_1758532#
!conv1d_36/StatefulPartitionedCall
activation_36/PartitionedCallPartitionedCall*conv1d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_36_layer_call_and_return_conditional_losses_1758742
activation_36/PartitionedCallã
mer0/PartitionedCallPartitionedCallinputsinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer0_layer_call_and_return_conditional_losses_1758882
mer0/PartitionedCallÎ
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall&activation_36/PartitionedCall:output:0batch_normalization_29_176724batch_normalization_29_176726batch_normalization_29_176728batch_normalization_29_176730*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_17523020
.batch_normalization_29/StatefulPartitionedCallñ
mer3/PartitionedCallPartitionedCallmer0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer3_layer_call_and_return_conditional_losses_1759442
mer3/PartitionedCall
dropout_26/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_1759742
dropout_26/PartitionedCall
mer1/StatefulPartitionedCallStatefulPartitionedCallmer0/PartitionedCall:output:0mer1_176735*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer1_layer_call_and_return_conditional_losses_1760012
mer1/StatefulPartitionedCall
mer4/StatefulPartitionedCallStatefulPartitionedCallmer3/PartitionedCall:output:0mer4_176738*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer4_layer_call_and_return_conditional_losses_1760272
mer4/StatefulPartitionedCallÈ
!conv1d_37/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0conv1d_37_176741conv1d_37_176743*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_37_layer_call_and_return_conditional_losses_1760542#
!conv1d_37/StatefulPartitionedCallù
mer5/PartitionedCallPartitionedCall%mer4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer5_layer_call_and_return_conditional_losses_1760862
mer5/PartitionedCallù
mer2/PartitionedCallPartitionedCall%mer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer2_layer_call_and_return_conditional_losses_1761152
mer2/PartitionedCall
activation_37/PartitionedCallPartitionedCall*conv1d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_37_layer_call_and_return_conditional_losses_1761332
activation_37/PartitionedCall
mer6/PartitionedCallPartitionedCallmer5/PartitionedCall:output:0mer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer6_layer_call_and_return_conditional_losses_1761472
mer6/PartitionedCallÎ
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall&activation_37/PartitionedCall:output:0batch_normalization_30_176750batch_normalization_30_176752batch_normalization_30_176754batch_normalization_30_176756*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_17537020
.batch_normalization_30/StatefulPartitionedCallñ
mer7/PartitionedCallPartitionedCallmer6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer7_layer_call_and_return_conditional_losses_1762052
mer7/PartitionedCall
dropout_27/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_1762352
dropout_27/PartitionedCallñ
mer8/PartitionedCallPartitionedCallmer7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer8_layer_call_and_return_conditional_losses_1762642
mer8/PartitionedCallñ
mer9/PartitionedCallPartitionedCallmer7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer9_layer_call_and_return_conditional_losses_1762932
mer9/PartitionedCallÈ
!conv1d_38/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0conv1d_38_176763conv1d_38_176765*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_38_layer_call_and_return_conditional_losses_1763212#
!conv1d_38/StatefulPartitionedCall
activation_38/PartitionedCallPartitionedCall*conv1d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_38_layer_call_and_return_conditional_losses_1763422
activation_38/PartitionedCall´
mer10/PartitionedCallPartitionedCallmer8/PartitionedCall:output:0mer7/PartitionedCall:output:0mer9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_mer10_layer_call_and_return_conditional_losses_1763582
mer10/PartitionedCall§
segm_out/PartitionedCallPartitionedCall&activation_38/PartitionedCall:output:0mer10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_segm_out_layer_call_and_return_conditional_losses_1763742
segm_out/PartitionedCall
IdentityIdentity!segm_out/PartitionedCall:output:0/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall"^conv1d_34/StatefulPartitionedCall"^conv1d_35/StatefulPartitionedCall"^conv1d_36/StatefulPartitionedCall"^conv1d_37/StatefulPartitionedCall"^conv1d_38/StatefulPartitionedCall^mer1/StatefulPartitionedCall^mer4/StatefulPartitionedCall^norm0/StatefulPartitionedCall^norm4/StatefulPartitionedCall^sinc/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*±
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::::::::::::2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2F
!conv1d_34/StatefulPartitionedCall!conv1d_34/StatefulPartitionedCall2F
!conv1d_35/StatefulPartitionedCall!conv1d_35/StatefulPartitionedCall2F
!conv1d_36/StatefulPartitionedCall!conv1d_36/StatefulPartitionedCall2F
!conv1d_37/StatefulPartitionedCall!conv1d_37/StatefulPartitionedCall2F
!conv1d_38/StatefulPartitionedCall!conv1d_38/StatefulPartitionedCall2<
mer1/StatefulPartitionedCallmer1/StatefulPartitionedCall2<
mer4/StatefulPartitionedCallmer4/StatefulPartitionedCall2>
norm0/StatefulPartitionedCallnorm0/StatefulPartitionedCall2>
norm4/StatefulPartitionedCallnorm4/StatefulPartitionedCall2<
sinc/StatefulPartitionedCallsinc/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
\
@__inference_mer9_layer_call_and_return_conditional_losses_178593

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
add/yk
addAddV2mul:z:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
addh
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
ª
7__inference_batch_normalization_29_layer_call_fn_178193

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_1752302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs


R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_178167

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:H*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:H2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:H2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:H*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:H2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:H*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:H2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:H*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:H2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
batchnorm/add_1è
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
ý
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_178067

inputs

identity_1g
IdentityIdentityinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identityv

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs

e
F__inference_dropout_27_layer_call_and_return_conditional_losses_178488

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *gk?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeÝ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
dtype0*
seed±ÿå)*
seed2%2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *¶©)>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
dropout/Mul_1r
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs

e
F__inference_dropout_27_layer_call_and_return_conditional_losses_176230

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *gk?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeÝ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
dtype0*
seed±ÿå)*
seed2%2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *¶©)>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
dropout/Mul_1r
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs

\
@__inference_mer2_layer_call_and_return_conditional_losses_178372

inputs
identity[
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
	truediv/xx
truedivRealDivtruediv/x:output:0inputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truedivS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
add/yo
addAddV2truediv:z:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
addh
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
Æ
*__inference_conv_segm_layer_call_fn_177592

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*A
_read_only_resource_inputs#
!	
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv_segm_layer_call_and_return_conditional_losses_1767722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*±
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
d
F__inference_dropout_24_layer_call_and_return_conditional_losses_177924

inputs

identity_1g
IdentityIdentityinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityv

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
\
@__inference_mer7_layer_call_and_return_conditional_losses_178517

inputs
identity[
	Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
	Greater/yx
GreaterGreaterinputsGreater/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
Greatero
CastCastGreater:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Casti
IdentityIdentityCast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
e
I__inference_activation_35_layer_call_and_return_conditional_losses_177963

inputs
identity[
ReluReluinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
Relus
IdentityIdentityRelu:activations:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
ë
e
I__inference_activation_36_layer_call_and_return_conditional_losses_178106

inputs
identity[
ReluReluinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
Relus
IdentityIdentityRelu:activations:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
Û
d
+__inference_dropout_24_layer_call_fn_177929

inputs
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_1757112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
ª
7__inference_batch_normalization_30_layer_call_fn_178464

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_1753702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
ê
j
@__inference_mer0_layer_call_and_return_conditional_losses_175888

inputs
inputs_1
identityb
mulMulinputsinputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
F__inference_dropout_24_layer_call_and_return_conditional_losses_175711

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *%?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeÝ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2%2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *AFþ=2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1r
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
R
&__inference_norm3_layer_call_fn_177676
inputs_0
inputs_1
identityÞ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm3_layer_call_and_return_conditional_losses_1754792
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
Ï
G
+__inference_dropout_25_layer_call_fn_178077

inputs
identityÖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_1758252
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
Ã
\
@__inference_mer7_layer_call_and_return_conditional_losses_176198

inputs
identity[
	Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
	Greater/yx
GreaterGreaterinputsGreater/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
Greatero
CastCastGreater:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Casti
IdentityIdentityCast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
¶
A__inference_norm0_layer_call_and_return_conditional_losses_175421

inputs/
+conv1d_expanddims_1_readvariableop_resource
identity¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
conv1d/ExpandDims¹
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:­ *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¸
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:­ 2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
IdentityIdentityconv1d/Squeeze:output:0#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ý
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_178493

inputs

identity_1g
IdentityIdentityinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identityv

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
Ã
A
%__inference_mer3_layer_call_fn_178249

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer3_layer_call_and_return_conditional_losses_1759382
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
\
@__inference_mer9_layer_call_and_return_conditional_losses_176285

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
add/yk
addAddV2mul:z:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
addh
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
\
@__inference_mer5_layer_call_and_return_conditional_losses_176078

inputs
identity[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
	truediv/yx
truedivRealDivinputstruediv/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truedivj
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis
	ReverseV2	ReverseV2truediv:z:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2s
IdentityIdentityReverseV2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ
Ç
*__inference_conv_segm_layer_call_fn_176837
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*A
_read_only_resource_inputs#
!	
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv_segm_layer_call_and_return_conditional_losses_1767722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*±
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_8


R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_178024

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:02
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:02
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:02
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:0*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:02
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:0*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:02
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
batchnorm/add_1è
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
À
µ
@__inference_mer4_layer_call_and_return_conditional_losses_176027

inputs/
+conv1d_expanddims_1_readvariableop_resource
identity¢"conv1d/ExpandDims_1/ReadVariableOp
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"        d               2
Pad/paddingso
PadPadinputsPad/paddings:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim¥
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:e*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:e2
conv1d/ExpandDims_1À
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
IdentityIdentityconv1d/Squeeze:output:0#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô0
É
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_177861

inputs
assignmovingavg_177836
assignmovingavg_1_177842)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:2
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices¶
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1Ì
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/177836*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_177836*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/177836*
_output_shapes
:2
AssignMovingAvg/subè
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/177836*
_output_shapes
:2
AssignMovingAvg/mul¯
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_177836AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/177836*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÒ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/177842*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_177842*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/177842*
_output_shapes
:2
AssignMovingAvg_1/subò
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/177842*
_output_shapes
:2
AssignMovingAvg_1/mul»
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_177842AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/177842*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1À
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
l
@__inference_mer6_layer_call_and_return_conditional_losses_178470
inputs_0
inputs_1
identityd
mulMulinputs_0inputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
ò
ª
7__inference_batch_normalization_27_layer_call_fn_177907

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1749502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_conv1d_37_layer_call_fn_178278

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_37_layer_call_and_return_conditional_losses_1760542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
Û
d
+__inference_dropout_27_layer_call_fn_178498

inputs
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_1762302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
Õ
J
.__inference_activation_37_layer_call_fn_178330

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_37_layer_call_and_return_conditional_losses_1761332
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
ï
l
&__inference_norm0_layer_call_fn_177630

inputs
unknown
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm0_layer_call_and_return_conditional_losses_1754212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
À
µ
@__inference_sinc_layer_call_and_return_conditional_losses_175397

inputs/
+conv1d_expanddims_1_readvariableop_resource
identity¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
IdentityIdentityconv1d/Squeeze:output:0#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
\
@__inference_mer5_layer_call_and_return_conditional_losses_178346

inputs
identity[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
	truediv/yx
truedivRealDivinputstruediv/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truedivj
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis
	ReverseV2	ReverseV2truediv:z:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2s
IdentityIdentityReverseV2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
ý
!__inference__wrapped_model_174821
input_8>
:conv_segm_sinc_conv1d_expanddims_1_readvariableop_resource?
;conv_segm_norm0_conv1d_expanddims_1_readvariableop_resource?
;conv_segm_norm4_conv1d_expanddims_1_readvariableop_resourceC
?conv_segm_conv1d_34_conv1d_expanddims_1_readvariableop_resource7
3conv_segm_conv1d_34_biasadd_readvariableop_resourceF
Bconv_segm_batch_normalization_27_batchnorm_readvariableop_resourceJ
Fconv_segm_batch_normalization_27_batchnorm_mul_readvariableop_resourceH
Dconv_segm_batch_normalization_27_batchnorm_readvariableop_1_resourceH
Dconv_segm_batch_normalization_27_batchnorm_readvariableop_2_resourceC
?conv_segm_conv1d_35_conv1d_expanddims_1_readvariableop_resource7
3conv_segm_conv1d_35_biasadd_readvariableop_resourceF
Bconv_segm_batch_normalization_28_batchnorm_readvariableop_resourceJ
Fconv_segm_batch_normalization_28_batchnorm_mul_readvariableop_resourceH
Dconv_segm_batch_normalization_28_batchnorm_readvariableop_1_resourceH
Dconv_segm_batch_normalization_28_batchnorm_readvariableop_2_resourceC
?conv_segm_conv1d_36_conv1d_expanddims_1_readvariableop_resource7
3conv_segm_conv1d_36_biasadd_readvariableop_resourceF
Bconv_segm_batch_normalization_29_batchnorm_readvariableop_resourceJ
Fconv_segm_batch_normalization_29_batchnorm_mul_readvariableop_resourceH
Dconv_segm_batch_normalization_29_batchnorm_readvariableop_1_resourceH
Dconv_segm_batch_normalization_29_batchnorm_readvariableop_2_resource>
:conv_segm_mer1_conv1d_expanddims_1_readvariableop_resource>
:conv_segm_mer4_conv1d_expanddims_1_readvariableop_resourceC
?conv_segm_conv1d_37_conv1d_expanddims_1_readvariableop_resource7
3conv_segm_conv1d_37_biasadd_readvariableop_resourceF
Bconv_segm_batch_normalization_30_batchnorm_readvariableop_resourceJ
Fconv_segm_batch_normalization_30_batchnorm_mul_readvariableop_resourceH
Dconv_segm_batch_normalization_30_batchnorm_readvariableop_1_resourceH
Dconv_segm_batch_normalization_30_batchnorm_readvariableop_2_resourceC
?conv_segm_conv1d_38_conv1d_expanddims_1_readvariableop_resource7
3conv_segm_conv1d_38_biasadd_readvariableop_resource
identity¢9conv_segm/batch_normalization_27/batchnorm/ReadVariableOp¢;conv_segm/batch_normalization_27/batchnorm/ReadVariableOp_1¢;conv_segm/batch_normalization_27/batchnorm/ReadVariableOp_2¢=conv_segm/batch_normalization_27/batchnorm/mul/ReadVariableOp¢9conv_segm/batch_normalization_28/batchnorm/ReadVariableOp¢;conv_segm/batch_normalization_28/batchnorm/ReadVariableOp_1¢;conv_segm/batch_normalization_28/batchnorm/ReadVariableOp_2¢=conv_segm/batch_normalization_28/batchnorm/mul/ReadVariableOp¢9conv_segm/batch_normalization_29/batchnorm/ReadVariableOp¢;conv_segm/batch_normalization_29/batchnorm/ReadVariableOp_1¢;conv_segm/batch_normalization_29/batchnorm/ReadVariableOp_2¢=conv_segm/batch_normalization_29/batchnorm/mul/ReadVariableOp¢9conv_segm/batch_normalization_30/batchnorm/ReadVariableOp¢;conv_segm/batch_normalization_30/batchnorm/ReadVariableOp_1¢;conv_segm/batch_normalization_30/batchnorm/ReadVariableOp_2¢=conv_segm/batch_normalization_30/batchnorm/mul/ReadVariableOp¢*conv_segm/conv1d_34/BiasAdd/ReadVariableOp¢6conv_segm/conv1d_34/conv1d/ExpandDims_1/ReadVariableOp¢*conv_segm/conv1d_35/BiasAdd/ReadVariableOp¢6conv_segm/conv1d_35/conv1d/ExpandDims_1/ReadVariableOp¢*conv_segm/conv1d_36/BiasAdd/ReadVariableOp¢6conv_segm/conv1d_36/conv1d/ExpandDims_1/ReadVariableOp¢*conv_segm/conv1d_37/BiasAdd/ReadVariableOp¢6conv_segm/conv1d_37/conv1d/ExpandDims_1/ReadVariableOp¢*conv_segm/conv1d_38/BiasAdd/ReadVariableOp¢6conv_segm/conv1d_38/conv1d/ExpandDims_1/ReadVariableOp¢1conv_segm/mer1/conv1d/ExpandDims_1/ReadVariableOp¢1conv_segm/mer4/conv1d/ExpandDims_1/ReadVariableOp¢2conv_segm/norm0/conv1d/ExpandDims_1/ReadVariableOp¢2conv_segm/norm4/conv1d/ExpandDims_1/ReadVariableOp¢1conv_segm/sinc/conv1d/ExpandDims_1/ReadVariableOp
$conv_segm/sinc/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2&
$conv_segm/sinc/conv1d/ExpandDims/dimÍ
 conv_segm/sinc/conv1d/ExpandDims
ExpandDimsinput_8-conv_segm/sinc/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 conv_segm/sinc/conv1d/ExpandDimså
1conv_segm/sinc/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp:conv_segm_sinc_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype023
1conv_segm/sinc/conv1d/ExpandDims_1/ReadVariableOp
&conv_segm/sinc/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&conv_segm/sinc/conv1d/ExpandDims_1/dimó
"conv_segm/sinc/conv1d/ExpandDims_1
ExpandDims9conv_segm/sinc/conv1d/ExpandDims_1/ReadVariableOp:value:0/conv_segm/sinc/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2$
"conv_segm/sinc/conv1d/ExpandDims_1û
conv_segm/sinc/conv1dConv2D)conv_segm/sinc/conv1d/ExpandDims:output:0+conv_segm/sinc/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv_segm/sinc/conv1dÈ
conv_segm/sinc/conv1d/SqueezeSqueezeconv_segm/sinc/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv_segm/sinc/conv1d/Squeeze
%conv_segm/norm0/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2'
%conv_segm/norm0/conv1d/ExpandDims/dimï
!conv_segm/norm0/conv1d/ExpandDims
ExpandDims&conv_segm/sinc/conv1d/Squeeze:output:0.conv_segm/norm0/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2#
!conv_segm/norm0/conv1d/ExpandDimsé
2conv_segm/norm0/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp;conv_segm_norm0_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:­ *
dtype024
2conv_segm/norm0/conv1d/ExpandDims_1/ReadVariableOp
'conv_segm/norm0/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_segm/norm0/conv1d/ExpandDims_1/dimø
#conv_segm/norm0/conv1d/ExpandDims_1
ExpandDims:conv_segm/norm0/conv1d/ExpandDims_1/ReadVariableOp:value:00conv_segm/norm0/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:­ 2%
#conv_segm/norm0/conv1d/ExpandDims_1ÿ
conv_segm/norm0/conv1dConv2D*conv_segm/norm0/conv1d/ExpandDims:output:0,conv_segm/norm0/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv_segm/norm0/conv1dË
conv_segm/norm0/conv1d/SqueezeSqueezeconv_segm/norm0/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2 
conv_segm/norm0/conv1d/Squeezes
conv_segm/norm1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
conv_segm/norm1/mul/y¹
conv_segm/norm1/mulMul'conv_segm/norm0/conv1d/Squeeze:output:0conv_segm/norm1/mul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/norm1/mul
conv_segm/norm2/subSubinput_8conv_segm/norm1/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/norm2/sub¢
conv_segm/norm3/mulMulconv_segm/norm2/sub:z:0conv_segm/norm2/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/norm3/mul
%conv_segm/norm4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2'
%conv_segm/norm4/conv1d/ExpandDims/dimà
!conv_segm/norm4/conv1d/ExpandDims
ExpandDimsconv_segm/norm3/mul:z:0.conv_segm/norm4/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2#
!conv_segm/norm4/conv1d/ExpandDimsé
2conv_segm/norm4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp;conv_segm_norm4_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:­*
dtype024
2conv_segm/norm4/conv1d/ExpandDims_1/ReadVariableOp
'conv_segm/norm4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'conv_segm/norm4/conv1d/ExpandDims_1/dimø
#conv_segm/norm4/conv1d/ExpandDims_1
ExpandDims:conv_segm/norm4/conv1d/ExpandDims_1/ReadVariableOp:value:00conv_segm/norm4/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:­2%
#conv_segm/norm4/conv1d/ExpandDims_1ÿ
conv_segm/norm4/conv1dConv2D*conv_segm/norm4/conv1d/ExpandDims:output:0,conv_segm/norm4/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv_segm/norm4/conv1dË
conv_segm/norm4/conv1d/SqueezeSqueezeconv_segm/norm4/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2 
conv_segm/norm4/conv1d/Squeezes
conv_segm/norm5/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
conv_segm/norm5/mul/y¹
conv_segm/norm5/mulMul'conv_segm/norm4/conv1d/Squeeze:output:0conv_segm/norm5/mul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/norm5/muls
conv_segm/norm5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
conv_segm/norm5/Constw
conv_segm/norm5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  2
conv_segm/norm5/Const_1Ó
%conv_segm/norm5/clip_by_value/MinimumMinimumconv_segm/norm5/mul:z:0 conv_segm/norm5/Const_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2'
%conv_segm/norm5/clip_by_value/MinimumÓ
conv_segm/norm5/clip_by_valueMaximum)conv_segm/norm5/clip_by_value/Minimum:z:0conv_segm/norm5/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/norm5/clip_by_value
conv_segm/norm5/SqrtSqrt!conv_segm/norm5/clip_by_value:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/norm5/Sqrts
conv_segm/norm5/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
conv_segm/norm5/add/y¬
conv_segm/norm5/addAddV2conv_segm/norm5/Sqrt:y:0conv_segm/norm5/add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/norm5/add{
conv_segm/norm5/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
conv_segm/norm5/truediv/x¹
conv_segm/norm5/truedivRealDiv"conv_segm/norm5/truediv/x:output:0conv_segm/norm5/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/norm5/truediv
conv_segm/norm6/mulMulinput_8conv_segm/norm5/truediv:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/norm6/mul
conv_segm/norm7/AbsAbsconv_segm/norm6/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/norm7/Abs
%conv_segm/norm7/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%conv_segm/norm7/Max/reduction_indicesÁ
conv_segm/norm7/MaxMaxconv_segm/norm7/Abs:y:0.conv_segm/norm7/Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
conv_segm/norm7/Maxs
conv_segm/norm7/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
conv_segm/norm7/add/y§
conv_segm/norm7/addAddV2conv_segm/norm7/Max:output:0conv_segm/norm7/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv_segm/norm7/add{
conv_segm/norm7/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
conv_segm/norm7/truediv/x°
conv_segm/norm7/truedivRealDiv"conv_segm/norm7/truediv/x:output:0conv_segm/norm7/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv_segm/norm7/truediv¦
conv_segm/norm8/mulMulconv_segm/norm6/mul:z:0conv_segm/norm7/truediv:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/norm8/mul¡
)conv_segm/conv1d_34/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2+
)conv_segm/conv1d_34/conv1d/ExpandDims/dimì
%conv_segm/conv1d_34/conv1d/ExpandDims
ExpandDimsconv_segm/norm8/mul:z:02conv_segm/conv1d_34/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2'
%conv_segm/conv1d_34/conv1d/ExpandDimsô
6conv_segm/conv1d_34/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp?conv_segm_conv1d_34_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype028
6conv_segm/conv1d_34/conv1d/ExpandDims_1/ReadVariableOp
+conv_segm/conv1d_34/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+conv_segm/conv1d_34/conv1d/ExpandDims_1/dim
'conv_segm/conv1d_34/conv1d/ExpandDims_1
ExpandDims>conv_segm/conv1d_34/conv1d/ExpandDims_1/ReadVariableOp:value:04conv_segm/conv1d_34/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2)
'conv_segm/conv1d_34/conv1d/ExpandDims_1
conv_segm/conv1d_34/conv1dConv2D.conv_segm/conv1d_34/conv1d/ExpandDims:output:00conv_segm/conv1d_34/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv_segm/conv1d_34/conv1d×
"conv_segm/conv1d_34/conv1d/SqueezeSqueeze#conv_segm/conv1d_34/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2$
"conv_segm/conv1d_34/conv1d/SqueezeÈ
*conv_segm/conv1d_34/BiasAdd/ReadVariableOpReadVariableOp3conv_segm_conv1d_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv_segm/conv1d_34/BiasAdd/ReadVariableOpå
conv_segm/conv1d_34/BiasAddBiasAdd+conv_segm/conv1d_34/conv1d/Squeeze:output:02conv_segm/conv1d_34/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/conv1d_34/BiasAdd©
conv_segm/activation_34/ReluRelu$conv_segm/conv1d_34/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/activation_34/Reluõ
9conv_segm/batch_normalization_27/batchnorm/ReadVariableOpReadVariableOpBconv_segm_batch_normalization_27_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02;
9conv_segm/batch_normalization_27/batchnorm/ReadVariableOp©
0conv_segm/batch_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:22
0conv_segm/batch_normalization_27/batchnorm/add/y
.conv_segm/batch_normalization_27/batchnorm/addAddV2Aconv_segm/batch_normalization_27/batchnorm/ReadVariableOp:value:09conv_segm/batch_normalization_27/batchnorm/add/y:output:0*
T0*
_output_shapes
:20
.conv_segm/batch_normalization_27/batchnorm/addÆ
0conv_segm/batch_normalization_27/batchnorm/RsqrtRsqrt2conv_segm/batch_normalization_27/batchnorm/add:z:0*
T0*
_output_shapes
:22
0conv_segm/batch_normalization_27/batchnorm/Rsqrt
=conv_segm/batch_normalization_27/batchnorm/mul/ReadVariableOpReadVariableOpFconv_segm_batch_normalization_27_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02?
=conv_segm/batch_normalization_27/batchnorm/mul/ReadVariableOp
.conv_segm/batch_normalization_27/batchnorm/mulMul4conv_segm/batch_normalization_27/batchnorm/Rsqrt:y:0Econv_segm/batch_normalization_27/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:20
.conv_segm/batch_normalization_27/batchnorm/mul
0conv_segm/batch_normalization_27/batchnorm/mul_1Mul*conv_segm/activation_34/Relu:activations:02conv_segm/batch_normalization_27/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
0conv_segm/batch_normalization_27/batchnorm/mul_1û
;conv_segm/batch_normalization_27/batchnorm/ReadVariableOp_1ReadVariableOpDconv_segm_batch_normalization_27_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02=
;conv_segm/batch_normalization_27/batchnorm/ReadVariableOp_1
0conv_segm/batch_normalization_27/batchnorm/mul_2MulCconv_segm/batch_normalization_27/batchnorm/ReadVariableOp_1:value:02conv_segm/batch_normalization_27/batchnorm/mul:z:0*
T0*
_output_shapes
:22
0conv_segm/batch_normalization_27/batchnorm/mul_2û
;conv_segm/batch_normalization_27/batchnorm/ReadVariableOp_2ReadVariableOpDconv_segm_batch_normalization_27_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02=
;conv_segm/batch_normalization_27/batchnorm/ReadVariableOp_2
.conv_segm/batch_normalization_27/batchnorm/subSubCconv_segm/batch_normalization_27/batchnorm/ReadVariableOp_2:value:04conv_segm/batch_normalization_27/batchnorm/mul_2:z:0*
T0*
_output_shapes
:20
.conv_segm/batch_normalization_27/batchnorm/sub
0conv_segm/batch_normalization_27/batchnorm/add_1AddV24conv_segm/batch_normalization_27/batchnorm/mul_1:z:02conv_segm/batch_normalization_27/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
0conv_segm/batch_normalization_27/batchnorm/add_1¿
conv_segm/dropout_24/IdentityIdentity4conv_segm/batch_normalization_27/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/dropout_24/Identity¡
)conv_segm/conv1d_35/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2+
)conv_segm/conv1d_35/conv1d/ExpandDims/dimû
%conv_segm/conv1d_35/conv1d/ExpandDims
ExpandDims&conv_segm/dropout_24/Identity:output:02conv_segm/conv1d_35/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2'
%conv_segm/conv1d_35/conv1d/ExpandDimsô
6conv_segm/conv1d_35/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp?conv_segm_conv1d_35_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0*
dtype028
6conv_segm/conv1d_35/conv1d/ExpandDims_1/ReadVariableOp
+conv_segm/conv1d_35/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+conv_segm/conv1d_35/conv1d/ExpandDims_1/dim
'conv_segm/conv1d_35/conv1d/ExpandDims_1
ExpandDims>conv_segm/conv1d_35/conv1d/ExpandDims_1/ReadVariableOp:value:04conv_segm/conv1d_35/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:02)
'conv_segm/conv1d_35/conv1d/ExpandDims_1
conv_segm/conv1d_35/conv1dConv2D.conv_segm/conv1d_35/conv1d/ExpandDims:output:00conv_segm/conv1d_35/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
paddingSAME*
strides
2
conv_segm/conv1d_35/conv1d×
"conv_segm/conv1d_35/conv1d/SqueezeSqueeze#conv_segm/conv1d_35/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2$
"conv_segm/conv1d_35/conv1d/SqueezeÈ
*conv_segm/conv1d_35/BiasAdd/ReadVariableOpReadVariableOp3conv_segm_conv1d_35_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02,
*conv_segm/conv1d_35/BiasAdd/ReadVariableOpå
conv_segm/conv1d_35/BiasAddBiasAdd+conv_segm/conv1d_35/conv1d/Squeeze:output:02conv_segm/conv1d_35/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
conv_segm/conv1d_35/BiasAdd©
conv_segm/activation_35/ReluRelu$conv_segm/conv1d_35/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
conv_segm/activation_35/Reluõ
9conv_segm/batch_normalization_28/batchnorm/ReadVariableOpReadVariableOpBconv_segm_batch_normalization_28_batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype02;
9conv_segm/batch_normalization_28/batchnorm/ReadVariableOp©
0conv_segm/batch_normalization_28/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:22
0conv_segm/batch_normalization_28/batchnorm/add/y
.conv_segm/batch_normalization_28/batchnorm/addAddV2Aconv_segm/batch_normalization_28/batchnorm/ReadVariableOp:value:09conv_segm/batch_normalization_28/batchnorm/add/y:output:0*
T0*
_output_shapes
:020
.conv_segm/batch_normalization_28/batchnorm/addÆ
0conv_segm/batch_normalization_28/batchnorm/RsqrtRsqrt2conv_segm/batch_normalization_28/batchnorm/add:z:0*
T0*
_output_shapes
:022
0conv_segm/batch_normalization_28/batchnorm/Rsqrt
=conv_segm/batch_normalization_28/batchnorm/mul/ReadVariableOpReadVariableOpFconv_segm_batch_normalization_28_batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype02?
=conv_segm/batch_normalization_28/batchnorm/mul/ReadVariableOp
.conv_segm/batch_normalization_28/batchnorm/mulMul4conv_segm/batch_normalization_28/batchnorm/Rsqrt:y:0Econv_segm/batch_normalization_28/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:020
.conv_segm/batch_normalization_28/batchnorm/mul
0conv_segm/batch_normalization_28/batchnorm/mul_1Mul*conv_segm/activation_35/Relu:activations:02conv_segm/batch_normalization_28/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ022
0conv_segm/batch_normalization_28/batchnorm/mul_1û
;conv_segm/batch_normalization_28/batchnorm/ReadVariableOp_1ReadVariableOpDconv_segm_batch_normalization_28_batchnorm_readvariableop_1_resource*
_output_shapes
:0*
dtype02=
;conv_segm/batch_normalization_28/batchnorm/ReadVariableOp_1
0conv_segm/batch_normalization_28/batchnorm/mul_2MulCconv_segm/batch_normalization_28/batchnorm/ReadVariableOp_1:value:02conv_segm/batch_normalization_28/batchnorm/mul:z:0*
T0*
_output_shapes
:022
0conv_segm/batch_normalization_28/batchnorm/mul_2û
;conv_segm/batch_normalization_28/batchnorm/ReadVariableOp_2ReadVariableOpDconv_segm_batch_normalization_28_batchnorm_readvariableop_2_resource*
_output_shapes
:0*
dtype02=
;conv_segm/batch_normalization_28/batchnorm/ReadVariableOp_2
.conv_segm/batch_normalization_28/batchnorm/subSubCconv_segm/batch_normalization_28/batchnorm/ReadVariableOp_2:value:04conv_segm/batch_normalization_28/batchnorm/mul_2:z:0*
T0*
_output_shapes
:020
.conv_segm/batch_normalization_28/batchnorm/sub
0conv_segm/batch_normalization_28/batchnorm/add_1AddV24conv_segm/batch_normalization_28/batchnorm/mul_1:z:02conv_segm/batch_normalization_28/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ022
0conv_segm/batch_normalization_28/batchnorm/add_1¿
conv_segm/dropout_25/IdentityIdentity4conv_segm/batch_normalization_28/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
conv_segm/dropout_25/Identity¡
)conv_segm/conv1d_36/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2+
)conv_segm/conv1d_36/conv1d/ExpandDims/dimû
%conv_segm/conv1d_36/conv1d/ExpandDims
ExpandDims&conv_segm/dropout_25/Identity:output:02conv_segm/conv1d_36/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02'
%conv_segm/conv1d_36/conv1d/ExpandDimsô
6conv_segm/conv1d_36/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp?conv_segm_conv1d_36_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:0H*
dtype028
6conv_segm/conv1d_36/conv1d/ExpandDims_1/ReadVariableOp
+conv_segm/conv1d_36/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+conv_segm/conv1d_36/conv1d/ExpandDims_1/dim
'conv_segm/conv1d_36/conv1d/ExpandDims_1
ExpandDims>conv_segm/conv1d_36/conv1d/ExpandDims_1/ReadVariableOp:value:04conv_segm/conv1d_36/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:0H2)
'conv_segm/conv1d_36/conv1d/ExpandDims_1
conv_segm/conv1d_36/conv1dConv2D.conv_segm/conv1d_36/conv1d/ExpandDims:output:00conv_segm/conv1d_36/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
paddingSAME*
strides
2
conv_segm/conv1d_36/conv1d×
"conv_segm/conv1d_36/conv1d/SqueezeSqueeze#conv_segm/conv1d_36/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2$
"conv_segm/conv1d_36/conv1d/SqueezeÈ
*conv_segm/conv1d_36/BiasAdd/ReadVariableOpReadVariableOp3conv_segm_conv1d_36_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02,
*conv_segm/conv1d_36/BiasAdd/ReadVariableOpå
conv_segm/conv1d_36/BiasAddBiasAdd+conv_segm/conv1d_36/conv1d/Squeeze:output:02conv_segm/conv1d_36/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
conv_segm/conv1d_36/BiasAdd©
conv_segm/activation_36/ReluRelu$conv_segm/conv1d_36/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
conv_segm/activation_36/Relu
conv_segm/mer0/mulMulinput_8input_8*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer0/mulõ
9conv_segm/batch_normalization_29/batchnorm/ReadVariableOpReadVariableOpBconv_segm_batch_normalization_29_batchnorm_readvariableop_resource*
_output_shapes
:H*
dtype02;
9conv_segm/batch_normalization_29/batchnorm/ReadVariableOp©
0conv_segm/batch_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:22
0conv_segm/batch_normalization_29/batchnorm/add/y
.conv_segm/batch_normalization_29/batchnorm/addAddV2Aconv_segm/batch_normalization_29/batchnorm/ReadVariableOp:value:09conv_segm/batch_normalization_29/batchnorm/add/y:output:0*
T0*
_output_shapes
:H20
.conv_segm/batch_normalization_29/batchnorm/addÆ
0conv_segm/batch_normalization_29/batchnorm/RsqrtRsqrt2conv_segm/batch_normalization_29/batchnorm/add:z:0*
T0*
_output_shapes
:H22
0conv_segm/batch_normalization_29/batchnorm/Rsqrt
=conv_segm/batch_normalization_29/batchnorm/mul/ReadVariableOpReadVariableOpFconv_segm_batch_normalization_29_batchnorm_mul_readvariableop_resource*
_output_shapes
:H*
dtype02?
=conv_segm/batch_normalization_29/batchnorm/mul/ReadVariableOp
.conv_segm/batch_normalization_29/batchnorm/mulMul4conv_segm/batch_normalization_29/batchnorm/Rsqrt:y:0Econv_segm/batch_normalization_29/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:H20
.conv_segm/batch_normalization_29/batchnorm/mul
0conv_segm/batch_normalization_29/batchnorm/mul_1Mul*conv_segm/activation_36/Relu:activations:02conv_segm/batch_normalization_29/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH22
0conv_segm/batch_normalization_29/batchnorm/mul_1û
;conv_segm/batch_normalization_29/batchnorm/ReadVariableOp_1ReadVariableOpDconv_segm_batch_normalization_29_batchnorm_readvariableop_1_resource*
_output_shapes
:H*
dtype02=
;conv_segm/batch_normalization_29/batchnorm/ReadVariableOp_1
0conv_segm/batch_normalization_29/batchnorm/mul_2MulCconv_segm/batch_normalization_29/batchnorm/ReadVariableOp_1:value:02conv_segm/batch_normalization_29/batchnorm/mul:z:0*
T0*
_output_shapes
:H22
0conv_segm/batch_normalization_29/batchnorm/mul_2û
;conv_segm/batch_normalization_29/batchnorm/ReadVariableOp_2ReadVariableOpDconv_segm_batch_normalization_29_batchnorm_readvariableop_2_resource*
_output_shapes
:H*
dtype02=
;conv_segm/batch_normalization_29/batchnorm/ReadVariableOp_2
.conv_segm/batch_normalization_29/batchnorm/subSubCconv_segm/batch_normalization_29/batchnorm/ReadVariableOp_2:value:04conv_segm/batch_normalization_29/batchnorm/mul_2:z:0*
T0*
_output_shapes
:H20
.conv_segm/batch_normalization_29/batchnorm/sub
0conv_segm/batch_normalization_29/batchnorm/add_1AddV24conv_segm/batch_normalization_29/batchnorm/mul_1:z:02conv_segm/batch_normalization_29/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH22
0conv_segm/batch_normalization_29/batchnorm/add_1
conv_segm/mer3/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
conv_segm/mer3/ReverseV2/axisÀ
conv_segm/mer3/ReverseV2	ReverseV2conv_segm/mer0/mul:z:0&conv_segm/mer3/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer3/ReverseV2¿
conv_segm/dropout_26/IdentityIdentity4conv_segm/batch_normalization_29/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
conv_segm/dropout_26/Identity£
conv_segm/mer1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"        d               2
conv_segm/mer1/Pad/paddings¬
conv_segm/mer1/PadPadconv_segm/mer0/mul:z:0$conv_segm/mer1/Pad/paddings:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer1/Pad
$conv_segm/mer1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2&
$conv_segm/mer1/conv1d/ExpandDims/dimá
 conv_segm/mer1/conv1d/ExpandDims
ExpandDimsconv_segm/mer1/Pad:output:0-conv_segm/mer1/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 conv_segm/mer1/conv1d/ExpandDimså
1conv_segm/mer1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp:conv_segm_mer1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:e*
dtype023
1conv_segm/mer1/conv1d/ExpandDims_1/ReadVariableOp
&conv_segm/mer1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&conv_segm/mer1/conv1d/ExpandDims_1/dimó
"conv_segm/mer1/conv1d/ExpandDims_1
ExpandDims9conv_segm/mer1/conv1d/ExpandDims_1/ReadVariableOp:value:0/conv_segm/mer1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:e2$
"conv_segm/mer1/conv1d/ExpandDims_1ü
conv_segm/mer1/conv1dConv2D)conv_segm/mer1/conv1d/ExpandDims:output:0+conv_segm/mer1/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv_segm/mer1/conv1dÈ
conv_segm/mer1/conv1d/SqueezeSqueezeconv_segm/mer1/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv_segm/mer1/conv1d/Squeeze£
conv_segm/mer4/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"        d               2
conv_segm/mer4/Pad/paddings·
conv_segm/mer4/PadPad!conv_segm/mer3/ReverseV2:output:0$conv_segm/mer4/Pad/paddings:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer4/Pad
$conv_segm/mer4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2&
$conv_segm/mer4/conv1d/ExpandDims/dimá
 conv_segm/mer4/conv1d/ExpandDims
ExpandDimsconv_segm/mer4/Pad:output:0-conv_segm/mer4/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 conv_segm/mer4/conv1d/ExpandDimså
1conv_segm/mer4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp:conv_segm_mer4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:e*
dtype023
1conv_segm/mer4/conv1d/ExpandDims_1/ReadVariableOp
&conv_segm/mer4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&conv_segm/mer4/conv1d/ExpandDims_1/dimó
"conv_segm/mer4/conv1d/ExpandDims_1
ExpandDims9conv_segm/mer4/conv1d/ExpandDims_1/ReadVariableOp:value:0/conv_segm/mer4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:e2$
"conv_segm/mer4/conv1d/ExpandDims_1ü
conv_segm/mer4/conv1dConv2D)conv_segm/mer4/conv1d/ExpandDims:output:0+conv_segm/mer4/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv_segm/mer4/conv1dÈ
conv_segm/mer4/conv1d/SqueezeSqueezeconv_segm/mer4/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv_segm/mer4/conv1d/Squeeze¡
)conv_segm/conv1d_37/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2+
)conv_segm/conv1d_37/conv1d/ExpandDims/dimû
%conv_segm/conv1d_37/conv1d/ExpandDims
ExpandDims&conv_segm/dropout_26/Identity:output:02conv_segm/conv1d_37/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2'
%conv_segm/conv1d_37/conv1d/ExpandDimsô
6conv_segm/conv1d_37/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp?conv_segm_conv1d_37_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:H`*
dtype028
6conv_segm/conv1d_37/conv1d/ExpandDims_1/ReadVariableOp
+conv_segm/conv1d_37/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+conv_segm/conv1d_37/conv1d/ExpandDims_1/dim
'conv_segm/conv1d_37/conv1d/ExpandDims_1
ExpandDims>conv_segm/conv1d_37/conv1d/ExpandDims_1/ReadVariableOp:value:04conv_segm/conv1d_37/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:H`2)
'conv_segm/conv1d_37/conv1d/ExpandDims_1
conv_segm/conv1d_37/conv1dConv2D.conv_segm/conv1d_37/conv1d/ExpandDims:output:00conv_segm/conv1d_37/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
paddingSAME*
strides
2
conv_segm/conv1d_37/conv1d×
"conv_segm/conv1d_37/conv1d/SqueezeSqueeze#conv_segm/conv1d_37/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2$
"conv_segm/conv1d_37/conv1d/SqueezeÈ
*conv_segm/conv1d_37/BiasAdd/ReadVariableOpReadVariableOp3conv_segm_conv1d_37_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02,
*conv_segm/conv1d_37/BiasAdd/ReadVariableOpå
conv_segm/conv1d_37/BiasAddBiasAdd+conv_segm/conv1d_37/conv1d/Squeeze:output:02conv_segm/conv1d_37/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
conv_segm/conv1d_37/BiasAddy
conv_segm/mer5/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
conv_segm/mer5/truediv/yÅ
conv_segm/mer5/truedivRealDiv&conv_segm/mer4/conv1d/Squeeze:output:0!conv_segm/mer5/truediv/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer5/truediv
conv_segm/mer5/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
conv_segm/mer5/ReverseV2/axisÄ
conv_segm/mer5/ReverseV2	ReverseV2conv_segm/mer5/truediv:z:0&conv_segm/mer5/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer5/ReverseV2y
conv_segm/mer2/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
conv_segm/mer2/truediv/xÅ
conv_segm/mer2/truedivRealDiv!conv_segm/mer2/truediv/x:output:0&conv_segm/mer1/conv1d/Squeeze:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer2/truedivq
conv_segm/mer2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
conv_segm/mer2/add/y«
conv_segm/mer2/addAddV2conv_segm/mer2/truediv:z:0conv_segm/mer2/add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer2/add©
conv_segm/activation_37/ReluRelu$conv_segm/conv1d_37/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
conv_segm/activation_37/Relu©
conv_segm/mer6/mulMul!conv_segm/mer5/ReverseV2:output:0conv_segm/mer2/add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer6/mulõ
9conv_segm/batch_normalization_30/batchnorm/ReadVariableOpReadVariableOpBconv_segm_batch_normalization_30_batchnorm_readvariableop_resource*
_output_shapes
:`*
dtype02;
9conv_segm/batch_normalization_30/batchnorm/ReadVariableOp©
0conv_segm/batch_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:22
0conv_segm/batch_normalization_30/batchnorm/add/y
.conv_segm/batch_normalization_30/batchnorm/addAddV2Aconv_segm/batch_normalization_30/batchnorm/ReadVariableOp:value:09conv_segm/batch_normalization_30/batchnorm/add/y:output:0*
T0*
_output_shapes
:`20
.conv_segm/batch_normalization_30/batchnorm/addÆ
0conv_segm/batch_normalization_30/batchnorm/RsqrtRsqrt2conv_segm/batch_normalization_30/batchnorm/add:z:0*
T0*
_output_shapes
:`22
0conv_segm/batch_normalization_30/batchnorm/Rsqrt
=conv_segm/batch_normalization_30/batchnorm/mul/ReadVariableOpReadVariableOpFconv_segm_batch_normalization_30_batchnorm_mul_readvariableop_resource*
_output_shapes
:`*
dtype02?
=conv_segm/batch_normalization_30/batchnorm/mul/ReadVariableOp
.conv_segm/batch_normalization_30/batchnorm/mulMul4conv_segm/batch_normalization_30/batchnorm/Rsqrt:y:0Econv_segm/batch_normalization_30/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:`20
.conv_segm/batch_normalization_30/batchnorm/mul
0conv_segm/batch_normalization_30/batchnorm/mul_1Mul*conv_segm/activation_37/Relu:activations:02conv_segm/batch_normalization_30/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`22
0conv_segm/batch_normalization_30/batchnorm/mul_1û
;conv_segm/batch_normalization_30/batchnorm/ReadVariableOp_1ReadVariableOpDconv_segm_batch_normalization_30_batchnorm_readvariableop_1_resource*
_output_shapes
:`*
dtype02=
;conv_segm/batch_normalization_30/batchnorm/ReadVariableOp_1
0conv_segm/batch_normalization_30/batchnorm/mul_2MulCconv_segm/batch_normalization_30/batchnorm/ReadVariableOp_1:value:02conv_segm/batch_normalization_30/batchnorm/mul:z:0*
T0*
_output_shapes
:`22
0conv_segm/batch_normalization_30/batchnorm/mul_2û
;conv_segm/batch_normalization_30/batchnorm/ReadVariableOp_2ReadVariableOpDconv_segm_batch_normalization_30_batchnorm_readvariableop_2_resource*
_output_shapes
:`*
dtype02=
;conv_segm/batch_normalization_30/batchnorm/ReadVariableOp_2
.conv_segm/batch_normalization_30/batchnorm/subSubCconv_segm/batch_normalization_30/batchnorm/ReadVariableOp_2:value:04conv_segm/batch_normalization_30/batchnorm/mul_2:z:0*
T0*
_output_shapes
:`20
.conv_segm/batch_normalization_30/batchnorm/sub
0conv_segm/batch_normalization_30/batchnorm/add_1AddV24conv_segm/batch_normalization_30/batchnorm/mul_1:z:02conv_segm/batch_normalization_30/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`22
0conv_segm/batch_normalization_30/batchnorm/add_1y
conv_segm/mer7/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
conv_segm/mer7/Greater/yµ
conv_segm/mer7/GreaterGreaterconv_segm/mer6/mul:z:0!conv_segm/mer7/Greater/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer7/Greater
conv_segm/mer7/CastCastconv_segm/mer7/Greater:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer7/Cast¿
conv_segm/dropout_27/IdentityIdentity4conv_segm/batch_normalization_30/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
conv_segm/dropout_27/Identityq
conv_segm/mer8/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
conv_segm/mer8/mul/y¦
conv_segm/mer8/mulMulconv_segm/mer7/Cast:y:0conv_segm/mer8/mul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer8/mulq
conv_segm/mer8/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
conv_segm/mer8/add/y§
conv_segm/mer8/addAddV2conv_segm/mer8/mul:z:0conv_segm/mer8/add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer8/addq
conv_segm/mer9/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
conv_segm/mer9/mul/y¦
conv_segm/mer9/mulMulconv_segm/mer7/Cast:y:0conv_segm/mer9/mul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer9/mulq
conv_segm/mer9/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
conv_segm/mer9/add/y§
conv_segm/mer9/addAddV2conv_segm/mer9/mul:z:0conv_segm/mer9/add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer9/add¡
)conv_segm/conv1d_38/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2+
)conv_segm/conv1d_38/conv1d/ExpandDims/dimû
%conv_segm/conv1d_38/conv1d/ExpandDims
ExpandDims&conv_segm/dropout_27/Identity:output:02conv_segm/conv1d_38/conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2'
%conv_segm/conv1d_38/conv1d/ExpandDimsõ
6conv_segm/conv1d_38/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp?conv_segm_conv1d_38_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`*
dtype028
6conv_segm/conv1d_38/conv1d/ExpandDims_1/ReadVariableOp
+conv_segm/conv1d_38/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2-
+conv_segm/conv1d_38/conv1d/ExpandDims_1/dim
'conv_segm/conv1d_38/conv1d/ExpandDims_1
ExpandDims>conv_segm/conv1d_38/conv1d/ExpandDims_1/ReadVariableOp:value:04conv_segm/conv1d_38/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`2)
'conv_segm/conv1d_38/conv1d/ExpandDims_1
conv_segm/conv1d_38/conv1dConv2D.conv_segm/conv1d_38/conv1d/ExpandDims:output:00conv_segm/conv1d_38/conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv_segm/conv1d_38/conv1d×
"conv_segm/conv1d_38/conv1d/SqueezeSqueeze#conv_segm/conv1d_38/conv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2$
"conv_segm/conv1d_38/conv1d/SqueezeÈ
*conv_segm/conv1d_38/BiasAdd/ReadVariableOpReadVariableOp3conv_segm_conv1d_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv_segm/conv1d_38/BiasAdd/ReadVariableOpå
conv_segm/conv1d_38/BiasAddBiasAdd+conv_segm/conv1d_38/conv1d/Squeeze:output:02conv_segm/conv1d_38/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/conv1d_38/BiasAdd²
conv_segm/activation_38/SigmoidSigmoid$conv_segm/conv1d_38/BiasAdd:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
conv_segm/activation_38/Sigmoid|
conv_segm/mer10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
conv_segm/mer10/concat/axisó
conv_segm/mer10/concatConcatV2conv_segm/mer8/add:z:0conv_segm/mer7/Cast:y:0conv_segm/mer9/add:z:0$conv_segm/mer10/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/mer10/concat¼
conv_segm/segm_out/mulMul#conv_segm/activation_38/Sigmoid:y:0conv_segm/mer10/concat:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv_segm/segm_out/mulß
IdentityIdentityconv_segm/segm_out/mul:z:0:^conv_segm/batch_normalization_27/batchnorm/ReadVariableOp<^conv_segm/batch_normalization_27/batchnorm/ReadVariableOp_1<^conv_segm/batch_normalization_27/batchnorm/ReadVariableOp_2>^conv_segm/batch_normalization_27/batchnorm/mul/ReadVariableOp:^conv_segm/batch_normalization_28/batchnorm/ReadVariableOp<^conv_segm/batch_normalization_28/batchnorm/ReadVariableOp_1<^conv_segm/batch_normalization_28/batchnorm/ReadVariableOp_2>^conv_segm/batch_normalization_28/batchnorm/mul/ReadVariableOp:^conv_segm/batch_normalization_29/batchnorm/ReadVariableOp<^conv_segm/batch_normalization_29/batchnorm/ReadVariableOp_1<^conv_segm/batch_normalization_29/batchnorm/ReadVariableOp_2>^conv_segm/batch_normalization_29/batchnorm/mul/ReadVariableOp:^conv_segm/batch_normalization_30/batchnorm/ReadVariableOp<^conv_segm/batch_normalization_30/batchnorm/ReadVariableOp_1<^conv_segm/batch_normalization_30/batchnorm/ReadVariableOp_2>^conv_segm/batch_normalization_30/batchnorm/mul/ReadVariableOp+^conv_segm/conv1d_34/BiasAdd/ReadVariableOp7^conv_segm/conv1d_34/conv1d/ExpandDims_1/ReadVariableOp+^conv_segm/conv1d_35/BiasAdd/ReadVariableOp7^conv_segm/conv1d_35/conv1d/ExpandDims_1/ReadVariableOp+^conv_segm/conv1d_36/BiasAdd/ReadVariableOp7^conv_segm/conv1d_36/conv1d/ExpandDims_1/ReadVariableOp+^conv_segm/conv1d_37/BiasAdd/ReadVariableOp7^conv_segm/conv1d_37/conv1d/ExpandDims_1/ReadVariableOp+^conv_segm/conv1d_38/BiasAdd/ReadVariableOp7^conv_segm/conv1d_38/conv1d/ExpandDims_1/ReadVariableOp2^conv_segm/mer1/conv1d/ExpandDims_1/ReadVariableOp2^conv_segm/mer4/conv1d/ExpandDims_1/ReadVariableOp3^conv_segm/norm0/conv1d/ExpandDims_1/ReadVariableOp3^conv_segm/norm4/conv1d/ExpandDims_1/ReadVariableOp2^conv_segm/sinc/conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*±
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::::::::::::2v
9conv_segm/batch_normalization_27/batchnorm/ReadVariableOp9conv_segm/batch_normalization_27/batchnorm/ReadVariableOp2z
;conv_segm/batch_normalization_27/batchnorm/ReadVariableOp_1;conv_segm/batch_normalization_27/batchnorm/ReadVariableOp_12z
;conv_segm/batch_normalization_27/batchnorm/ReadVariableOp_2;conv_segm/batch_normalization_27/batchnorm/ReadVariableOp_22~
=conv_segm/batch_normalization_27/batchnorm/mul/ReadVariableOp=conv_segm/batch_normalization_27/batchnorm/mul/ReadVariableOp2v
9conv_segm/batch_normalization_28/batchnorm/ReadVariableOp9conv_segm/batch_normalization_28/batchnorm/ReadVariableOp2z
;conv_segm/batch_normalization_28/batchnorm/ReadVariableOp_1;conv_segm/batch_normalization_28/batchnorm/ReadVariableOp_12z
;conv_segm/batch_normalization_28/batchnorm/ReadVariableOp_2;conv_segm/batch_normalization_28/batchnorm/ReadVariableOp_22~
=conv_segm/batch_normalization_28/batchnorm/mul/ReadVariableOp=conv_segm/batch_normalization_28/batchnorm/mul/ReadVariableOp2v
9conv_segm/batch_normalization_29/batchnorm/ReadVariableOp9conv_segm/batch_normalization_29/batchnorm/ReadVariableOp2z
;conv_segm/batch_normalization_29/batchnorm/ReadVariableOp_1;conv_segm/batch_normalization_29/batchnorm/ReadVariableOp_12z
;conv_segm/batch_normalization_29/batchnorm/ReadVariableOp_2;conv_segm/batch_normalization_29/batchnorm/ReadVariableOp_22~
=conv_segm/batch_normalization_29/batchnorm/mul/ReadVariableOp=conv_segm/batch_normalization_29/batchnorm/mul/ReadVariableOp2v
9conv_segm/batch_normalization_30/batchnorm/ReadVariableOp9conv_segm/batch_normalization_30/batchnorm/ReadVariableOp2z
;conv_segm/batch_normalization_30/batchnorm/ReadVariableOp_1;conv_segm/batch_normalization_30/batchnorm/ReadVariableOp_12z
;conv_segm/batch_normalization_30/batchnorm/ReadVariableOp_2;conv_segm/batch_normalization_30/batchnorm/ReadVariableOp_22~
=conv_segm/batch_normalization_30/batchnorm/mul/ReadVariableOp=conv_segm/batch_normalization_30/batchnorm/mul/ReadVariableOp2X
*conv_segm/conv1d_34/BiasAdd/ReadVariableOp*conv_segm/conv1d_34/BiasAdd/ReadVariableOp2p
6conv_segm/conv1d_34/conv1d/ExpandDims_1/ReadVariableOp6conv_segm/conv1d_34/conv1d/ExpandDims_1/ReadVariableOp2X
*conv_segm/conv1d_35/BiasAdd/ReadVariableOp*conv_segm/conv1d_35/BiasAdd/ReadVariableOp2p
6conv_segm/conv1d_35/conv1d/ExpandDims_1/ReadVariableOp6conv_segm/conv1d_35/conv1d/ExpandDims_1/ReadVariableOp2X
*conv_segm/conv1d_36/BiasAdd/ReadVariableOp*conv_segm/conv1d_36/BiasAdd/ReadVariableOp2p
6conv_segm/conv1d_36/conv1d/ExpandDims_1/ReadVariableOp6conv_segm/conv1d_36/conv1d/ExpandDims_1/ReadVariableOp2X
*conv_segm/conv1d_37/BiasAdd/ReadVariableOp*conv_segm/conv1d_37/BiasAdd/ReadVariableOp2p
6conv_segm/conv1d_37/conv1d/ExpandDims_1/ReadVariableOp6conv_segm/conv1d_37/conv1d/ExpandDims_1/ReadVariableOp2X
*conv_segm/conv1d_38/BiasAdd/ReadVariableOp*conv_segm/conv1d_38/BiasAdd/ReadVariableOp2p
6conv_segm/conv1d_38/conv1d/ExpandDims_1/ReadVariableOp6conv_segm/conv1d_38/conv1d/ExpandDims_1/ReadVariableOp2f
1conv_segm/mer1/conv1d/ExpandDims_1/ReadVariableOp1conv_segm/mer1/conv1d/ExpandDims_1/ReadVariableOp2f
1conv_segm/mer4/conv1d/ExpandDims_1/ReadVariableOp1conv_segm/mer4/conv1d/ExpandDims_1/ReadVariableOp2h
2conv_segm/norm0/conv1d/ExpandDims_1/ReadVariableOp2conv_segm/norm0/conv1d/ExpandDims_1/ReadVariableOp2h
2conv_segm/norm4/conv1d/ExpandDims_1/ReadVariableOp2conv_segm/norm4/conv1d/ExpandDims_1/ReadVariableOp2f
1conv_segm/sinc/conv1d/ExpandDims_1/ReadVariableOp1conv_segm/sinc/conv1d/ExpandDims_1/ReadVariableOp:] Y
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_8
ë
e
I__inference_activation_37_layer_call_and_return_conditional_losses_176133

inputs
identity[
ReluReluinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
Relus
IdentityIdentityRelu:activations:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs

e
F__inference_dropout_26_layer_call_and_return_conditional_losses_175969

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *W¢?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeÝ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*
dtype0*
seed±ÿå)*
seed2%2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *{'W>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
dropout/Mul_1r
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
Û
Æ
*__inference_conv_segm_layer_call_fn_177525

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*9
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv_segm_layer_call_and_return_conditional_losses_1765992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*±
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À
µ
@__inference_mer4_layer_call_and_return_conditional_losses_178292

inputs/
+conv1d_expanddims_1_readvariableop_resource
identity¢"conv1d/ExpandDims_1/ReadVariableOp
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"        d               2
Pad/paddingso
PadPadinputsPad/paddings:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim¥
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:e*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:e2
conv1d/ExpandDims_1À
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
IdentityIdentityconv1d/Squeeze:output:0#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_174950

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1è
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð
ª
7__inference_batch_normalization_28_layer_call_fn_178037

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_1750572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
Ï
G
+__inference_dropout_27_layer_call_fn_178503

inputs
identityÖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_1762352
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
ô0
É
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_178004

inputs
assignmovingavg_177979
assignmovingavg_1_177985)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:0*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:02
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices¶
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:0*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 2
moments/Squeeze_1Ì
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/177979*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_177979*
_output_shapes
:0*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/177979*
_output_shapes
:02
AssignMovingAvg/subè
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/177979*
_output_shapes
:02
AssignMovingAvg/mul¯
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_177979AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/177979*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÒ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/177985*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_177985*
_output_shapes
:0*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/177985*
_output_shapes
:02
AssignMovingAvg_1/subò
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/177985*
_output_shapes
:02
AssignMovingAvg_1/mul»
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_177985AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/177985*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:02
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:02
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:02
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:02
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:02
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
batchnorm/add_1À
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs

\
@__inference_mer2_layer_call_and_return_conditional_losses_176115

inputs
identity[
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
	truediv/xx
truedivRealDivtruediv/x:output:0inputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truedivS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
add/yo
addAddV2truediv:z:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
addh
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
n
D__inference_segm_out_layer_call_and_return_conditional_losses_176374

inputs
inputs_1
identityb
mulMulinputsinputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð
ª
7__inference_batch_normalization_30_layer_call_fn_178451

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_1753372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
Æ
#
__inference__traced_save_178897
file_prefix*
&savev2_sinc_kernel_read_readvariableop+
'savev2_norm0_kernel_read_readvariableop+
'savev2_norm4_kernel_read_readvariableop/
+savev2_conv1d_34_kernel_read_readvariableop-
)savev2_conv1d_34_bias_read_readvariableop;
7savev2_batch_normalization_27_gamma_read_readvariableop:
6savev2_batch_normalization_27_beta_read_readvariableopA
=savev2_batch_normalization_27_moving_mean_read_readvariableopE
Asavev2_batch_normalization_27_moving_variance_read_readvariableop/
+savev2_conv1d_35_kernel_read_readvariableop-
)savev2_conv1d_35_bias_read_readvariableop;
7savev2_batch_normalization_28_gamma_read_readvariableop:
6savev2_batch_normalization_28_beta_read_readvariableopA
=savev2_batch_normalization_28_moving_mean_read_readvariableopE
Asavev2_batch_normalization_28_moving_variance_read_readvariableop/
+savev2_conv1d_36_kernel_read_readvariableop-
)savev2_conv1d_36_bias_read_readvariableop;
7savev2_batch_normalization_29_gamma_read_readvariableop:
6savev2_batch_normalization_29_beta_read_readvariableopA
=savev2_batch_normalization_29_moving_mean_read_readvariableopE
Asavev2_batch_normalization_29_moving_variance_read_readvariableop/
+savev2_conv1d_37_kernel_read_readvariableop-
)savev2_conv1d_37_bias_read_readvariableop*
&savev2_mer4_kernel_read_readvariableop*
&savev2_mer1_kernel_read_readvariableop;
7savev2_batch_normalization_30_gamma_read_readvariableop:
6savev2_batch_normalization_30_beta_read_readvariableopA
=savev2_batch_normalization_30_moving_mean_read_readvariableopE
Asavev2_batch_normalization_30_moving_variance_read_readvariableop/
+savev2_conv1d_38_kernel_read_readvariableop-
)savev2_conv1d_38_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop1
-savev2_adam_sinc_kernel_m_read_readvariableop6
2savev2_adam_conv1d_34_kernel_m_read_readvariableop4
0savev2_adam_conv1d_34_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_27_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_27_beta_m_read_readvariableop6
2savev2_adam_conv1d_35_kernel_m_read_readvariableop4
0savev2_adam_conv1d_35_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_28_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_28_beta_m_read_readvariableop6
2savev2_adam_conv1d_36_kernel_m_read_readvariableop4
0savev2_adam_conv1d_36_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_29_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_29_beta_m_read_readvariableop6
2savev2_adam_conv1d_37_kernel_m_read_readvariableop4
0savev2_adam_conv1d_37_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_30_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_30_beta_m_read_readvariableop6
2savev2_adam_conv1d_38_kernel_m_read_readvariableop4
0savev2_adam_conv1d_38_bias_m_read_readvariableop1
-savev2_adam_sinc_kernel_v_read_readvariableop6
2savev2_adam_conv1d_34_kernel_v_read_readvariableop4
0savev2_adam_conv1d_34_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_27_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_27_beta_v_read_readvariableop6
2savev2_adam_conv1d_35_kernel_v_read_readvariableop4
0savev2_adam_conv1d_35_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_28_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_28_beta_v_read_readvariableop6
2savev2_adam_conv1d_36_kernel_v_read_readvariableop4
0savev2_adam_conv1d_36_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_29_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_29_beta_v_read_readvariableop6
2savev2_adam_conv1d_37_kernel_v_read_readvariableop4
0savev2_adam_conv1d_37_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_30_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_30_beta_v_read_readvariableop6
2savev2_adam_conv1d_38_kernel_v_read_readvariableop4
0savev2_adam_conv1d_38_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¤+
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*¶*
value¬*B©*OB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-12/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-12/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-12/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-12/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names©
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*³
value©B¦OB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices"
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_sinc_kernel_read_readvariableop'savev2_norm0_kernel_read_readvariableop'savev2_norm4_kernel_read_readvariableop+savev2_conv1d_34_kernel_read_readvariableop)savev2_conv1d_34_bias_read_readvariableop7savev2_batch_normalization_27_gamma_read_readvariableop6savev2_batch_normalization_27_beta_read_readvariableop=savev2_batch_normalization_27_moving_mean_read_readvariableopAsavev2_batch_normalization_27_moving_variance_read_readvariableop+savev2_conv1d_35_kernel_read_readvariableop)savev2_conv1d_35_bias_read_readvariableop7savev2_batch_normalization_28_gamma_read_readvariableop6savev2_batch_normalization_28_beta_read_readvariableop=savev2_batch_normalization_28_moving_mean_read_readvariableopAsavev2_batch_normalization_28_moving_variance_read_readvariableop+savev2_conv1d_36_kernel_read_readvariableop)savev2_conv1d_36_bias_read_readvariableop7savev2_batch_normalization_29_gamma_read_readvariableop6savev2_batch_normalization_29_beta_read_readvariableop=savev2_batch_normalization_29_moving_mean_read_readvariableopAsavev2_batch_normalization_29_moving_variance_read_readvariableop+savev2_conv1d_37_kernel_read_readvariableop)savev2_conv1d_37_bias_read_readvariableop&savev2_mer4_kernel_read_readvariableop&savev2_mer1_kernel_read_readvariableop7savev2_batch_normalization_30_gamma_read_readvariableop6savev2_batch_normalization_30_beta_read_readvariableop=savev2_batch_normalization_30_moving_mean_read_readvariableopAsavev2_batch_normalization_30_moving_variance_read_readvariableop+savev2_conv1d_38_kernel_read_readvariableop)savev2_conv1d_38_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop-savev2_adam_sinc_kernel_m_read_readvariableop2savev2_adam_conv1d_34_kernel_m_read_readvariableop0savev2_adam_conv1d_34_bias_m_read_readvariableop>savev2_adam_batch_normalization_27_gamma_m_read_readvariableop=savev2_adam_batch_normalization_27_beta_m_read_readvariableop2savev2_adam_conv1d_35_kernel_m_read_readvariableop0savev2_adam_conv1d_35_bias_m_read_readvariableop>savev2_adam_batch_normalization_28_gamma_m_read_readvariableop=savev2_adam_batch_normalization_28_beta_m_read_readvariableop2savev2_adam_conv1d_36_kernel_m_read_readvariableop0savev2_adam_conv1d_36_bias_m_read_readvariableop>savev2_adam_batch_normalization_29_gamma_m_read_readvariableop=savev2_adam_batch_normalization_29_beta_m_read_readvariableop2savev2_adam_conv1d_37_kernel_m_read_readvariableop0savev2_adam_conv1d_37_bias_m_read_readvariableop>savev2_adam_batch_normalization_30_gamma_m_read_readvariableop=savev2_adam_batch_normalization_30_beta_m_read_readvariableop2savev2_adam_conv1d_38_kernel_m_read_readvariableop0savev2_adam_conv1d_38_bias_m_read_readvariableop-savev2_adam_sinc_kernel_v_read_readvariableop2savev2_adam_conv1d_34_kernel_v_read_readvariableop0savev2_adam_conv1d_34_bias_v_read_readvariableop>savev2_adam_batch_normalization_27_gamma_v_read_readvariableop=savev2_adam_batch_normalization_27_beta_v_read_readvariableop2savev2_adam_conv1d_35_kernel_v_read_readvariableop0savev2_adam_conv1d_35_bias_v_read_readvariableop>savev2_adam_batch_normalization_28_gamma_v_read_readvariableop=savev2_adam_batch_normalization_28_beta_v_read_readvariableop2savev2_adam_conv1d_36_kernel_v_read_readvariableop0savev2_adam_conv1d_36_bias_v_read_readvariableop>savev2_adam_batch_normalization_29_gamma_v_read_readvariableop=savev2_adam_batch_normalization_29_beta_v_read_readvariableop2savev2_adam_conv1d_37_kernel_v_read_readvariableop0savev2_adam_conv1d_37_bias_v_read_readvariableop>savev2_adam_batch_normalization_30_gamma_v_read_readvariableop=savev2_adam_batch_normalization_30_beta_v_read_readvariableop2savev2_adam_conv1d_38_kernel_v_read_readvariableop0savev2_adam_conv1d_38_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *]
dtypesS
Q2O	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*þ
_input_shapesì
é: :@ :­ :­:::::::0:0:0:0:0:0:0H:H:H:H:H:H:H`:`:e:e:`:`:`:`:`:: : : : : : : : : :@ :::::0:0:0:0:0H:H:H:H:H`:`:`:`:`::@ :::::0:0:0:0:0H:H:H:H:H`:`:`:`:`:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:@ :)%
#
_output_shapes
:­ :)%
#
_output_shapes
:­:($
"
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
::(
$
"
_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0:($
"
_output_shapes
:0H: 

_output_shapes
:H: 

_output_shapes
:H: 

_output_shapes
:H: 

_output_shapes
:H: 

_output_shapes
:H:($
"
_output_shapes
:H`: 

_output_shapes
:`:($
"
_output_shapes
:e:($
"
_output_shapes
:e: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`:)%
#
_output_shapes
:`: 

_output_shapes
:: 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :()$
"
_output_shapes
:@ :(*$
"
_output_shapes
:: +

_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
::(.$
"
_output_shapes
:0: /

_output_shapes
:0: 0

_output_shapes
:0: 1

_output_shapes
:0:(2$
"
_output_shapes
:0H: 3

_output_shapes
:H: 4

_output_shapes
:H: 5

_output_shapes
:H:(6$
"
_output_shapes
:H`: 7

_output_shapes
:`: 8

_output_shapes
:`: 9

_output_shapes
:`:):%
#
_output_shapes
:`: ;

_output_shapes
::(<$
"
_output_shapes
:@ :(=$
"
_output_shapes
:: >

_output_shapes
:: ?

_output_shapes
:: @

_output_shapes
::(A$
"
_output_shapes
:0: B

_output_shapes
:0: C

_output_shapes
:0: D

_output_shapes
:0:(E$
"
_output_shapes
:0H: F

_output_shapes
:H: G

_output_shapes
:H: H

_output_shapes
:H:(I$
"
_output_shapes
:H`: J

_output_shapes
:`: K

_output_shapes
:`: L

_output_shapes
:`:)M%
#
_output_shapes
:`: N

_output_shapes
::O

_output_shapes
: 
û
\
@__inference_mer8_layer_call_and_return_conditional_losses_178567

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
add/yk
addAddV2mul:z:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
addh
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_177881

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1è
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô0
É
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_178147

inputs
assignmovingavg_178122
assignmovingavg_1_178128)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:H*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:H2
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices¶
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:H*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:H*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:H*
squeeze_dims
 2
moments/Squeeze_1Ì
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/178122*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_178122*
_output_shapes
:H*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/178122*
_output_shapes
:H2
AssignMovingAvg/subè
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/178122*
_output_shapes
:H2
AssignMovingAvg/mul¯
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_178122AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/178122*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÒ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/178128*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_178128*
_output_shapes
:H*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/178128*
_output_shapes
:H2
AssignMovingAvg_1/subò
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/178128*
_output_shapes
:H2
AssignMovingAvg_1/mul»
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_178128AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/178128*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:H2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:H2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:H*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:H2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:H2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:H*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:H2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
batchnorm/add_1À
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
Ã
¶
A__inference_norm4_layer_call_and_return_conditional_losses_175500

inputs/
+conv1d_expanddims_1_readvariableop_resource
identity¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¹
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:­*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¸
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:­2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
IdentityIdentityconv1d/Squeeze:output:0#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
]
A__inference_norm1_layer_call_and_return_conditional_losses_175445

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
]
A__inference_norm1_layer_call_and_return_conditional_losses_175439

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
l
&__inference_norm4_layer_call_fn_177695

inputs
unknown
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm4_layer_call_and_return_conditional_losses_1755002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
m
A__inference_norm6_layer_call_and_return_conditional_losses_177741
inputs_0
inputs_1
identityd
mulMulinputs_0inputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
Ã
A
%__inference_mer2_layer_call_fn_178377

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer2_layer_call_and_return_conditional_losses_1761072
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
]
A__inference_norm1_layer_call_and_return_conditional_losses_177642

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
B
&__inference_norm1_layer_call_fn_177647

inputs
identityÑ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm1_layer_call_and_return_conditional_losses_1754392
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
\
@__inference_mer5_layer_call_and_return_conditional_losses_176086

inputs
identity[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
	truediv/yx
truedivRealDivinputstruediv/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truedivj
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis
	ReverseV2	ReverseV2truediv:z:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2s
IdentityIdentityReverseV2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
ª
7__inference_batch_normalization_28_layer_call_fn_178050

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_1750902
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs

{
A__inference_mer10_layer_call_and_return_conditional_losses_178621
inputs_0
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
concatp
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/2
Ó
]
A__inference_norm7_layer_call_and_return_conditional_losses_175581

inputs
identityX
AbsAbsinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Absp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indices
MaxMaxAbs:y:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
MaxS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
add/yg
addAddV2Max:output:0add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add[
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
	truediv/xp
truedivRealDivtruediv/x:output:0add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
truedivc
IdentityIdentitytruediv:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_conv1d_34_layer_call_fn_177815

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_34_layer_call_and_return_conditional_losses_1756352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
F__inference_dropout_24_layer_call_and_return_conditional_losses_177919

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *%?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeÝ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2%2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *AFþ=2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1r
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×Ë
ó+
"__inference__traced_restore_179141
file_prefix 
assignvariableop_sinc_kernel#
assignvariableop_1_norm0_kernel#
assignvariableop_2_norm4_kernel'
#assignvariableop_3_conv1d_34_kernel%
!assignvariableop_4_conv1d_34_bias3
/assignvariableop_5_batch_normalization_27_gamma2
.assignvariableop_6_batch_normalization_27_beta9
5assignvariableop_7_batch_normalization_27_moving_mean=
9assignvariableop_8_batch_normalization_27_moving_variance'
#assignvariableop_9_conv1d_35_kernel&
"assignvariableop_10_conv1d_35_bias4
0assignvariableop_11_batch_normalization_28_gamma3
/assignvariableop_12_batch_normalization_28_beta:
6assignvariableop_13_batch_normalization_28_moving_mean>
:assignvariableop_14_batch_normalization_28_moving_variance(
$assignvariableop_15_conv1d_36_kernel&
"assignvariableop_16_conv1d_36_bias4
0assignvariableop_17_batch_normalization_29_gamma3
/assignvariableop_18_batch_normalization_29_beta:
6assignvariableop_19_batch_normalization_29_moving_mean>
:assignvariableop_20_batch_normalization_29_moving_variance(
$assignvariableop_21_conv1d_37_kernel&
"assignvariableop_22_conv1d_37_bias#
assignvariableop_23_mer4_kernel#
assignvariableop_24_mer1_kernel4
0assignvariableop_25_batch_normalization_30_gamma3
/assignvariableop_26_batch_normalization_30_beta:
6assignvariableop_27_batch_normalization_30_moving_mean>
:assignvariableop_28_batch_normalization_30_moving_variance(
$assignvariableop_29_conv1d_38_kernel&
"assignvariableop_30_conv1d_38_bias!
assignvariableop_31_adam_iter#
assignvariableop_32_adam_beta_1#
assignvariableop_33_adam_beta_2"
assignvariableop_34_adam_decay*
&assignvariableop_35_adam_learning_rate
assignvariableop_36_total
assignvariableop_37_count
assignvariableop_38_total_1
assignvariableop_39_count_1*
&assignvariableop_40_adam_sinc_kernel_m/
+assignvariableop_41_adam_conv1d_34_kernel_m-
)assignvariableop_42_adam_conv1d_34_bias_m;
7assignvariableop_43_adam_batch_normalization_27_gamma_m:
6assignvariableop_44_adam_batch_normalization_27_beta_m/
+assignvariableop_45_adam_conv1d_35_kernel_m-
)assignvariableop_46_adam_conv1d_35_bias_m;
7assignvariableop_47_adam_batch_normalization_28_gamma_m:
6assignvariableop_48_adam_batch_normalization_28_beta_m/
+assignvariableop_49_adam_conv1d_36_kernel_m-
)assignvariableop_50_adam_conv1d_36_bias_m;
7assignvariableop_51_adam_batch_normalization_29_gamma_m:
6assignvariableop_52_adam_batch_normalization_29_beta_m/
+assignvariableop_53_adam_conv1d_37_kernel_m-
)assignvariableop_54_adam_conv1d_37_bias_m;
7assignvariableop_55_adam_batch_normalization_30_gamma_m:
6assignvariableop_56_adam_batch_normalization_30_beta_m/
+assignvariableop_57_adam_conv1d_38_kernel_m-
)assignvariableop_58_adam_conv1d_38_bias_m*
&assignvariableop_59_adam_sinc_kernel_v/
+assignvariableop_60_adam_conv1d_34_kernel_v-
)assignvariableop_61_adam_conv1d_34_bias_v;
7assignvariableop_62_adam_batch_normalization_27_gamma_v:
6assignvariableop_63_adam_batch_normalization_27_beta_v/
+assignvariableop_64_adam_conv1d_35_kernel_v-
)assignvariableop_65_adam_conv1d_35_bias_v;
7assignvariableop_66_adam_batch_normalization_28_gamma_v:
6assignvariableop_67_adam_batch_normalization_28_beta_v/
+assignvariableop_68_adam_conv1d_36_kernel_v-
)assignvariableop_69_adam_conv1d_36_bias_v;
7assignvariableop_70_adam_batch_normalization_29_gamma_v:
6assignvariableop_71_adam_batch_normalization_29_beta_v/
+assignvariableop_72_adam_conv1d_37_kernel_v-
)assignvariableop_73_adam_conv1d_37_bias_v;
7assignvariableop_74_adam_batch_normalization_30_gamma_v:
6assignvariableop_75_adam_batch_normalization_30_beta_v/
+assignvariableop_76_adam_conv1d_38_kernel_v-
)assignvariableop_77_adam_conv1d_38_bias_v
identity_79¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_8¢AssignVariableOp_9ª+
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*¶*
value¬*B©*OB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-12/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-12/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-12/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-12/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names¯
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:O*
dtype0*³
value©B¦OB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¹
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ò
_output_shapes¿
¼:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*]
dtypesS
Q2O	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_sinc_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¤
AssignVariableOp_1AssignVariableOpassignvariableop_1_norm0_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¤
AssignVariableOp_2AssignVariableOpassignvariableop_2_norm4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¨
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv1d_34_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¦
AssignVariableOp_4AssignVariableOp!assignvariableop_4_conv1d_34_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5´
AssignVariableOp_5AssignVariableOp/assignvariableop_5_batch_normalization_27_gammaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6³
AssignVariableOp_6AssignVariableOp.assignvariableop_6_batch_normalization_27_betaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7º
AssignVariableOp_7AssignVariableOp5assignvariableop_7_batch_normalization_27_moving_meanIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¾
AssignVariableOp_8AssignVariableOp9assignvariableop_8_batch_normalization_27_moving_varianceIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¨
AssignVariableOp_9AssignVariableOp#assignvariableop_9_conv1d_35_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10ª
AssignVariableOp_10AssignVariableOp"assignvariableop_10_conv1d_35_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¸
AssignVariableOp_11AssignVariableOp0assignvariableop_11_batch_normalization_28_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12·
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_28_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¾
AssignVariableOp_13AssignVariableOp6assignvariableop_13_batch_normalization_28_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Â
AssignVariableOp_14AssignVariableOp:assignvariableop_14_batch_normalization_28_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¬
AssignVariableOp_15AssignVariableOp$assignvariableop_15_conv1d_36_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16ª
AssignVariableOp_16AssignVariableOp"assignvariableop_16_conv1d_36_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¸
AssignVariableOp_17AssignVariableOp0assignvariableop_17_batch_normalization_29_gammaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18·
AssignVariableOp_18AssignVariableOp/assignvariableop_18_batch_normalization_29_betaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¾
AssignVariableOp_19AssignVariableOp6assignvariableop_19_batch_normalization_29_moving_meanIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Â
AssignVariableOp_20AssignVariableOp:assignvariableop_20_batch_normalization_29_moving_varianceIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¬
AssignVariableOp_21AssignVariableOp$assignvariableop_21_conv1d_37_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22ª
AssignVariableOp_22AssignVariableOp"assignvariableop_22_conv1d_37_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23§
AssignVariableOp_23AssignVariableOpassignvariableop_23_mer4_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24§
AssignVariableOp_24AssignVariableOpassignvariableop_24_mer1_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¸
AssignVariableOp_25AssignVariableOp0assignvariableop_25_batch_normalization_30_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26·
AssignVariableOp_26AssignVariableOp/assignvariableop_26_batch_normalization_30_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¾
AssignVariableOp_27AssignVariableOp6assignvariableop_27_batch_normalization_30_moving_meanIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Â
AssignVariableOp_28AssignVariableOp:assignvariableop_28_batch_normalization_30_moving_varianceIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¬
AssignVariableOp_29AssignVariableOp$assignvariableop_29_conv1d_38_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30ª
AssignVariableOp_30AssignVariableOp"assignvariableop_30_conv1d_38_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_31¥
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_iterIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32§
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_beta_1Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33§
AssignVariableOp_33AssignVariableOpassignvariableop_33_adam_beta_2Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¦
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_decayIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35®
AssignVariableOp_35AssignVariableOp&assignvariableop_35_adam_learning_rateIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36¡
AssignVariableOp_36AssignVariableOpassignvariableop_36_totalIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37¡
AssignVariableOp_37AssignVariableOpassignvariableop_37_countIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38£
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39£
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40®
AssignVariableOp_40AssignVariableOp&assignvariableop_40_adam_sinc_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41³
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv1d_34_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42±
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv1d_34_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43¿
AssignVariableOp_43AssignVariableOp7assignvariableop_43_adam_batch_normalization_27_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44¾
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_batch_normalization_27_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45³
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv1d_35_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46±
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv1d_35_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47¿
AssignVariableOp_47AssignVariableOp7assignvariableop_47_adam_batch_normalization_28_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48¾
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_batch_normalization_28_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49³
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv1d_36_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50±
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv1d_36_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51¿
AssignVariableOp_51AssignVariableOp7assignvariableop_51_adam_batch_normalization_29_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52¾
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_batch_normalization_29_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53³
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv1d_37_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54±
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv1d_37_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55¿
AssignVariableOp_55AssignVariableOp7assignvariableop_55_adam_batch_normalization_30_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56¾
AssignVariableOp_56AssignVariableOp6assignvariableop_56_adam_batch_normalization_30_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57³
AssignVariableOp_57AssignVariableOp+assignvariableop_57_adam_conv1d_38_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58±
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_conv1d_38_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59®
AssignVariableOp_59AssignVariableOp&assignvariableop_59_adam_sinc_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60³
AssignVariableOp_60AssignVariableOp+assignvariableop_60_adam_conv1d_34_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61±
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_conv1d_34_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62¿
AssignVariableOp_62AssignVariableOp7assignvariableop_62_adam_batch_normalization_27_gamma_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63¾
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_batch_normalization_27_beta_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64³
AssignVariableOp_64AssignVariableOp+assignvariableop_64_adam_conv1d_35_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65±
AssignVariableOp_65AssignVariableOp)assignvariableop_65_adam_conv1d_35_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66¿
AssignVariableOp_66AssignVariableOp7assignvariableop_66_adam_batch_normalization_28_gamma_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67¾
AssignVariableOp_67AssignVariableOp6assignvariableop_67_adam_batch_normalization_28_beta_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68³
AssignVariableOp_68AssignVariableOp+assignvariableop_68_adam_conv1d_36_kernel_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69±
AssignVariableOp_69AssignVariableOp)assignvariableop_69_adam_conv1d_36_bias_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70¿
AssignVariableOp_70AssignVariableOp7assignvariableop_70_adam_batch_normalization_29_gamma_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71¾
AssignVariableOp_71AssignVariableOp6assignvariableop_71_adam_batch_normalization_29_beta_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72³
AssignVariableOp_72AssignVariableOp+assignvariableop_72_adam_conv1d_37_kernel_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73±
AssignVariableOp_73AssignVariableOp)assignvariableop_73_adam_conv1d_37_bias_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74¿
AssignVariableOp_74AssignVariableOp7assignvariableop_74_adam_batch_normalization_30_gamma_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75¾
AssignVariableOp_75AssignVariableOp6assignvariableop_75_adam_batch_normalization_30_beta_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76³
AssignVariableOp_76AssignVariableOp+assignvariableop_76_adam_conv1d_38_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77±
AssignVariableOp_77AssignVariableOp)assignvariableop_77_adam_conv1d_38_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_779
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_78Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_78
Identity_79IdentityIdentity_78:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_79"#
identity_79Identity_79:output:0*Ï
_input_shapes½
º: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


*__inference_conv1d_38_layer_call_fn_178551

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_38_layer_call_and_return_conditional_losses_1763212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
Ã
A
%__inference_mer9_layer_call_fn_178603

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer9_layer_call_and_return_conditional_losses_1762932
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
e
I__inference_activation_35_layer_call_and_return_conditional_losses_175765

inputs
identity[
ReluReluinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
Relus
IdentityIdentityRelu:activations:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
÷
\
@__inference_mer3_layer_call_and_return_conditional_losses_178244

inputs
identityj
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis
	ReverseV2	ReverseV2inputsReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2s
IdentityIdentityReverseV2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
\
@__inference_mer9_layer_call_and_return_conditional_losses_176293

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
add/yk
addAddV2mul:z:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
addh
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
k
%__inference_mer4_layer_call_fn_178299

inputs
unknown
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer4_layer_call_and_return_conditional_losses_1760272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
m
A__inference_norm3_layer_call_and_return_conditional_losses_177670
inputs_0
inputs_1
identityd
mulMulinputs_0inputs_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1

]
A__inference_norm5_layer_call_and_return_conditional_losses_177710

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  2	
Const_1
clip_by_value/MinimumMinimummul:z:0Const_1:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
clip_by_value/Minimum
clip_by_valueMaximumclip_by_value/Minimum:z:0Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
clip_by_valuef
SqrtSqrtclip_by_value:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
SqrtS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
add/yl
addAddV2Sqrt:y:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
add[
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
	truediv/xy
truedivRealDivtruediv/x:output:0add:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truedivl
IdentityIdentitytruediv:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
A
%__inference_mer8_layer_call_fn_178577

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer8_layer_call_and_return_conditional_losses_1762642
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
]
A__inference_norm7_layer_call_and_return_conditional_losses_177758

inputs
identityX
AbsAbsinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Absp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indices
MaxMaxAbs:y:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
MaxS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
add/yg
addAddV2Max:output:0add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add[
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
	truediv/xp
truedivRealDivtruediv/x:output:0add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
truedivc
IdentityIdentitytruediv:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
J
.__inference_activation_34_layer_call_fn_177825

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_34_layer_call_and_return_conditional_losses_1756562
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À
µ
@__inference_mer1_layer_call_and_return_conditional_losses_178313

inputs/
+conv1d_expanddims_1_readvariableop_resource
identity¢"conv1d/ExpandDims_1/ReadVariableOp
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"        d               2
Pad/paddingso
PadPadinputsPad/paddings:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim¥
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:e*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:e2
conv1d/ExpandDims_1À
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
IdentityIdentityconv1d/Squeeze:output:0#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ
Ç
*__inference_conv_segm_layer_call_fn_176664
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*9
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv_segm_layer_call_and_return_conditional_losses_1765992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*±
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_8
À
µ
@__inference_sinc_layer_call_and_return_conditional_losses_177604

inputs/
+conv1d_expanddims_1_readvariableop_resource
identity¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@ *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@ 2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
IdentityIdentityconv1d/Squeeze:output:0#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
]
A__inference_norm7_layer_call_and_return_conditional_losses_175592

inputs
identityX
AbsAbsinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Absp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indices
MaxMaxAbs:y:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
MaxS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
add/yg
addAddV2Max:output:0add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add[
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
	truediv/xp
truedivRealDivtruediv/x:output:0add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
truedivc
IdentityIdentitytruediv:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
ø
E__inference_conv1d_34_layer_call_and_return_conditional_losses_177806

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2
conv1d/ExpandDims_1¿
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAdd¯
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
e
I__inference_activation_36_layer_call_and_return_conditional_losses_175874

inputs
identity[
ReluReluinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2
Relus
IdentityIdentityRelu:activations:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
º
]
A__inference_norm1_layer_call_and_return_conditional_losses_177636

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *BºY;2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulh
IdentityIdentitymul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô0
É
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_175337

inputs
assignmovingavg_175312
assignmovingavg_1_175318)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:`*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:`2
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices¶
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:`*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:`*
squeeze_dims
 2
moments/Squeeze_1Ì
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/175312*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_175312*
_output_shapes
:`*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/175312*
_output_shapes
:`2
AssignMovingAvg/subè
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/175312*
_output_shapes
:`2
AssignMovingAvg/mul¯
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_175312AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/175312*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÒ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/175318*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_175318*
_output_shapes
:`*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/175318*
_output_shapes
:`2
AssignMovingAvg_1/subò
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/175318*
_output_shapes
:`2
AssignMovingAvg_1/mul»
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_175318AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/175318*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:`2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:`2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:`*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:`2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:`2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:`*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:`2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2
batchnorm/add_1À
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
³
B
&__inference_norm7_layer_call_fn_177774

inputs
identityÈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm7_layer_call_and_return_conditional_losses_1755812
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï
G
+__inference_dropout_24_layer_call_fn_177934

inputs
identityÖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_1757162
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
F__inference_dropout_25_layer_call_and_return_conditional_losses_178062

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *,?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeÝ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*
dtype0*
seed±ÿå)*
seed2%2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ûe=2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
dropout/Mul_1r
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs
Û
d
+__inference_dropout_26_layer_call_fn_178227

inputs
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_1759692
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
_user_specified_nameinputs
÷
\
@__inference_mer3_layer_call_and_return_conditional_losses_178238

inputs
identityj
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis
	ReverseV2	ReverseV2inputsReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2s
IdentityIdentityReverseV2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
\
@__inference_mer5_layer_call_and_return_conditional_losses_178338

inputs
identity[
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
	truediv/yx
truedivRealDivinputstruediv/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truedivj
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2
ReverseV2/axis
	ReverseV2	ReverseV2truediv:z:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	ReverseV2s
IdentityIdentityReverseV2:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î 
Ý
E__inference_conv_segm_layer_call_and_return_conditional_losses_176490
input_8
sinc_176387
norm0_176390
norm4_176396
conv1d_34_176403
conv1d_34_176405!
batch_normalization_27_176409!
batch_normalization_27_176411!
batch_normalization_27_176413!
batch_normalization_27_176415
conv1d_35_176419
conv1d_35_176421!
batch_normalization_28_176425!
batch_normalization_28_176427!
batch_normalization_28_176429!
batch_normalization_28_176431
conv1d_36_176435
conv1d_36_176437!
batch_normalization_29_176442!
batch_normalization_29_176444!
batch_normalization_29_176446!
batch_normalization_29_176448
mer1_176453
mer4_176456
conv1d_37_176459
conv1d_37_176461!
batch_normalization_30_176468!
batch_normalization_30_176470!
batch_normalization_30_176472!
batch_normalization_30_176474
conv1d_38_176481
conv1d_38_176483
identity¢.batch_normalization_27/StatefulPartitionedCall¢.batch_normalization_28/StatefulPartitionedCall¢.batch_normalization_29/StatefulPartitionedCall¢.batch_normalization_30/StatefulPartitionedCall¢!conv1d_34/StatefulPartitionedCall¢!conv1d_35/StatefulPartitionedCall¢!conv1d_36/StatefulPartitionedCall¢!conv1d_37/StatefulPartitionedCall¢!conv1d_38/StatefulPartitionedCall¢mer1/StatefulPartitionedCall¢mer4/StatefulPartitionedCall¢norm0/StatefulPartitionedCall¢norm4/StatefulPartitionedCall¢sinc/StatefulPartitionedCall
sinc/StatefulPartitionedCallStatefulPartitionedCallinput_8sinc_176387*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_sinc_layer_call_and_return_conditional_losses_1753972
sinc/StatefulPartitionedCall¦
norm0/StatefulPartitionedCallStatefulPartitionedCall%sinc/StatefulPartitionedCall:output:0norm0_176390*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm0_layer_call_and_return_conditional_losses_1754212
norm0/StatefulPartitionedCallý
norm1/PartitionedCallPartitionedCall&norm0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm1_layer_call_and_return_conditional_losses_1754452
norm1/PartitionedCallÿ
norm2/PartitionedCallPartitionedCallinput_8norm1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm2_layer_call_and_return_conditional_losses_1754642
norm2/PartitionedCall
norm3/PartitionedCallPartitionedCallnorm2/PartitionedCall:output:0norm2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm3_layer_call_and_return_conditional_losses_1754792
norm3/PartitionedCall
norm4/StatefulPartitionedCallStatefulPartitionedCallnorm3/PartitionedCall:output:0norm4_176396*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm4_layer_call_and_return_conditional_losses_1755002
norm4/StatefulPartitionedCallý
norm5/PartitionedCallPartitionedCall&norm4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm5_layer_call_and_return_conditional_losses_1755422
norm5/PartitionedCallÿ
norm6/PartitionedCallPartitionedCallinput_8norm5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm6_layer_call_and_return_conditional_losses_1755612
norm6/PartitionedCallì
norm7/PartitionedCallPartitionedCallnorm6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm7_layer_call_and_return_conditional_losses_1755922
norm7/PartitionedCall
norm8/PartitionedCallPartitionedCallnorm6/PartitionedCall:output:0norm7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm8_layer_call_and_return_conditional_losses_1756112
norm8/PartitionedCallÃ
!conv1d_34/StatefulPartitionedCallStatefulPartitionedCallnorm8/PartitionedCall:output:0conv1d_34_176403conv1d_34_176405*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_34_layer_call_and_return_conditional_losses_1756352#
!conv1d_34/StatefulPartitionedCall
activation_34/PartitionedCallPartitionedCall*conv1d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_34_layer_call_and_return_conditional_losses_1756562
activation_34/PartitionedCallÎ
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall&activation_34/PartitionedCall:output:0batch_normalization_27_176409batch_normalization_27_176411batch_normalization_27_176413batch_normalization_27_176415*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_17495020
.batch_normalization_27/StatefulPartitionedCall
dropout_24/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_1757162
dropout_24/PartitionedCallÈ
!conv1d_35/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0conv1d_35_176419conv1d_35_176421*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_35_layer_call_and_return_conditional_losses_1757442#
!conv1d_35/StatefulPartitionedCall
activation_35/PartitionedCallPartitionedCall*conv1d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_35_layer_call_and_return_conditional_losses_1757652
activation_35/PartitionedCallÎ
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall&activation_35/PartitionedCall:output:0batch_normalization_28_176425batch_normalization_28_176427batch_normalization_28_176429batch_normalization_28_176431*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_17509020
.batch_normalization_28/StatefulPartitionedCall
dropout_25/PartitionedCallPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_1758252
dropout_25/PartitionedCallÈ
!conv1d_36/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0conv1d_36_176435conv1d_36_176437*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_36_layer_call_and_return_conditional_losses_1758532#
!conv1d_36/StatefulPartitionedCall
activation_36/PartitionedCallPartitionedCall*conv1d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_36_layer_call_and_return_conditional_losses_1758742
activation_36/PartitionedCallå
mer0/PartitionedCallPartitionedCallinput_8input_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer0_layer_call_and_return_conditional_losses_1758882
mer0/PartitionedCallÎ
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall&activation_36/PartitionedCall:output:0batch_normalization_29_176442batch_normalization_29_176444batch_normalization_29_176446batch_normalization_29_176448*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_17523020
.batch_normalization_29/StatefulPartitionedCallñ
mer3/PartitionedCallPartitionedCallmer0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer3_layer_call_and_return_conditional_losses_1759442
mer3/PartitionedCall
dropout_26/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_1759742
dropout_26/PartitionedCall
mer1/StatefulPartitionedCallStatefulPartitionedCallmer0/PartitionedCall:output:0mer1_176453*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer1_layer_call_and_return_conditional_losses_1760012
mer1/StatefulPartitionedCall
mer4/StatefulPartitionedCallStatefulPartitionedCallmer3/PartitionedCall:output:0mer4_176456*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer4_layer_call_and_return_conditional_losses_1760272
mer4/StatefulPartitionedCallÈ
!conv1d_37/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0conv1d_37_176459conv1d_37_176461*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_37_layer_call_and_return_conditional_losses_1760542#
!conv1d_37/StatefulPartitionedCallù
mer5/PartitionedCallPartitionedCall%mer4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer5_layer_call_and_return_conditional_losses_1760862
mer5/PartitionedCallù
mer2/PartitionedCallPartitionedCall%mer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer2_layer_call_and_return_conditional_losses_1761152
mer2/PartitionedCall
activation_37/PartitionedCallPartitionedCall*conv1d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_37_layer_call_and_return_conditional_losses_1761332
activation_37/PartitionedCall
mer6/PartitionedCallPartitionedCallmer5/PartitionedCall:output:0mer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer6_layer_call_and_return_conditional_losses_1761472
mer6/PartitionedCallÎ
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall&activation_37/PartitionedCall:output:0batch_normalization_30_176468batch_normalization_30_176470batch_normalization_30_176472batch_normalization_30_176474*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_17537020
.batch_normalization_30/StatefulPartitionedCallñ
mer7/PartitionedCallPartitionedCallmer6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer7_layer_call_and_return_conditional_losses_1762052
mer7/PartitionedCall
dropout_27/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_1762352
dropout_27/PartitionedCallñ
mer8/PartitionedCallPartitionedCallmer7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer8_layer_call_and_return_conditional_losses_1762642
mer8/PartitionedCallñ
mer9/PartitionedCallPartitionedCallmer7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer9_layer_call_and_return_conditional_losses_1762932
mer9/PartitionedCallÈ
!conv1d_38/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0conv1d_38_176481conv1d_38_176483*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_38_layer_call_and_return_conditional_losses_1763212#
!conv1d_38/StatefulPartitionedCall
activation_38/PartitionedCallPartitionedCall*conv1d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_38_layer_call_and_return_conditional_losses_1763422
activation_38/PartitionedCall´
mer10/PartitionedCallPartitionedCallmer8/PartitionedCall:output:0mer7/PartitionedCall:output:0mer9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_mer10_layer_call_and_return_conditional_losses_1763582
mer10/PartitionedCall§
segm_out/PartitionedCallPartitionedCall&activation_38/PartitionedCall:output:0mer10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_segm_out_layer_call_and_return_conditional_losses_1763742
segm_out/PartitionedCall
IdentityIdentity!segm_out/PartitionedCall:output:0/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall"^conv1d_34/StatefulPartitionedCall"^conv1d_35/StatefulPartitionedCall"^conv1d_36/StatefulPartitionedCall"^conv1d_37/StatefulPartitionedCall"^conv1d_38/StatefulPartitionedCall^mer1/StatefulPartitionedCall^mer4/StatefulPartitionedCall^norm0/StatefulPartitionedCall^norm4/StatefulPartitionedCall^sinc/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*±
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::::::::::::2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2F
!conv1d_34/StatefulPartitionedCall!conv1d_34/StatefulPartitionedCall2F
!conv1d_35/StatefulPartitionedCall!conv1d_35/StatefulPartitionedCall2F
!conv1d_36/StatefulPartitionedCall!conv1d_36/StatefulPartitionedCall2F
!conv1d_37/StatefulPartitionedCall!conv1d_37/StatefulPartitionedCall2F
!conv1d_38/StatefulPartitionedCall!conv1d_38/StatefulPartitionedCall2<
mer1/StatefulPartitionedCallmer1/StatefulPartitionedCall2<
mer4/StatefulPartitionedCallmer4/StatefulPartitionedCall2>
norm0/StatefulPartitionedCallnorm0/StatefulPartitionedCall2>
norm4/StatefulPartitionedCallnorm4/StatefulPartitionedCall2<
sinc/StatefulPartitionedCallsinc/StatefulPartitionedCall:] Y
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_8
û
\
@__inference_mer8_layer_call_and_return_conditional_losses_176256

inputs
identityS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
mul/yh
mulMulinputsmul/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
add/yk
addAddV2mul:z:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
addh
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
A
%__inference_mer9_layer_call_fn_178598

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer9_layer_call_and_return_conditional_losses_1762852
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð
ª
7__inference_batch_normalization_27_layer_call_fn_177894

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1749172
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
Q
%__inference_mer0_layer_call_fn_178205
inputs_0
inputs_1
identityÝ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer0_layer_call_and_return_conditional_losses_1758882
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
§
ð
E__inference_conv_segm_layer_call_and_return_conditional_losses_176599

inputs
sinc_176496
norm0_176499
norm4_176505
conv1d_34_176512
conv1d_34_176514!
batch_normalization_27_176518!
batch_normalization_27_176520!
batch_normalization_27_176522!
batch_normalization_27_176524
conv1d_35_176528
conv1d_35_176530!
batch_normalization_28_176534!
batch_normalization_28_176536!
batch_normalization_28_176538!
batch_normalization_28_176540
conv1d_36_176544
conv1d_36_176546!
batch_normalization_29_176551!
batch_normalization_29_176553!
batch_normalization_29_176555!
batch_normalization_29_176557
mer1_176562
mer4_176565
conv1d_37_176568
conv1d_37_176570!
batch_normalization_30_176577!
batch_normalization_30_176579!
batch_normalization_30_176581!
batch_normalization_30_176583
conv1d_38_176590
conv1d_38_176592
identity¢.batch_normalization_27/StatefulPartitionedCall¢.batch_normalization_28/StatefulPartitionedCall¢.batch_normalization_29/StatefulPartitionedCall¢.batch_normalization_30/StatefulPartitionedCall¢!conv1d_34/StatefulPartitionedCall¢!conv1d_35/StatefulPartitionedCall¢!conv1d_36/StatefulPartitionedCall¢!conv1d_37/StatefulPartitionedCall¢!conv1d_38/StatefulPartitionedCall¢"dropout_24/StatefulPartitionedCall¢"dropout_25/StatefulPartitionedCall¢"dropout_26/StatefulPartitionedCall¢"dropout_27/StatefulPartitionedCall¢mer1/StatefulPartitionedCall¢mer4/StatefulPartitionedCall¢norm0/StatefulPartitionedCall¢norm4/StatefulPartitionedCall¢sinc/StatefulPartitionedCall
sinc/StatefulPartitionedCallStatefulPartitionedCallinputssinc_176496*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_sinc_layer_call_and_return_conditional_losses_1753972
sinc/StatefulPartitionedCall¦
norm0/StatefulPartitionedCallStatefulPartitionedCall%sinc/StatefulPartitionedCall:output:0norm0_176499*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm0_layer_call_and_return_conditional_losses_1754212
norm0/StatefulPartitionedCallý
norm1/PartitionedCallPartitionedCall&norm0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm1_layer_call_and_return_conditional_losses_1754392
norm1/PartitionedCallþ
norm2/PartitionedCallPartitionedCallinputsnorm1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm2_layer_call_and_return_conditional_losses_1754642
norm2/PartitionedCall
norm3/PartitionedCallPartitionedCallnorm2/PartitionedCall:output:0norm2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm3_layer_call_and_return_conditional_losses_1754792
norm3/PartitionedCall
norm4/StatefulPartitionedCallStatefulPartitionedCallnorm3/PartitionedCall:output:0norm4_176505*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm4_layer_call_and_return_conditional_losses_1755002
norm4/StatefulPartitionedCallý
norm5/PartitionedCallPartitionedCall&norm4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm5_layer_call_and_return_conditional_losses_1755272
norm5/PartitionedCallþ
norm6/PartitionedCallPartitionedCallinputsnorm5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm6_layer_call_and_return_conditional_losses_1755612
norm6/PartitionedCallì
norm7/PartitionedCallPartitionedCallnorm6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm7_layer_call_and_return_conditional_losses_1755812
norm7/PartitionedCall
norm8/PartitionedCallPartitionedCallnorm6/PartitionedCall:output:0norm7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_norm8_layer_call_and_return_conditional_losses_1756112
norm8/PartitionedCallÃ
!conv1d_34/StatefulPartitionedCallStatefulPartitionedCallnorm8/PartitionedCall:output:0conv1d_34_176512conv1d_34_176514*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_34_layer_call_and_return_conditional_losses_1756352#
!conv1d_34/StatefulPartitionedCall
activation_34/PartitionedCallPartitionedCall*conv1d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_34_layer_call_and_return_conditional_losses_1756562
activation_34/PartitionedCallÌ
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall&activation_34/PartitionedCall:output:0batch_normalization_27_176518batch_normalization_27_176520batch_normalization_27_176522batch_normalization_27_176524*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_17491720
.batch_normalization_27/StatefulPartitionedCallµ
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_1757112$
"dropout_24/StatefulPartitionedCallÐ
!conv1d_35/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0conv1d_35_176528conv1d_35_176530*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_35_layer_call_and_return_conditional_losses_1757442#
!conv1d_35/StatefulPartitionedCall
activation_35/PartitionedCallPartitionedCall*conv1d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_35_layer_call_and_return_conditional_losses_1757652
activation_35/PartitionedCallÌ
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall&activation_35/PartitionedCall:output:0batch_normalization_28_176534batch_normalization_28_176536batch_normalization_28_176538batch_normalization_28_176540*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_17505720
.batch_normalization_28/StatefulPartitionedCallÚ
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_1758202$
"dropout_25/StatefulPartitionedCallÐ
!conv1d_36/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0conv1d_36_176544conv1d_36_176546*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_36_layer_call_and_return_conditional_losses_1758532#
!conv1d_36/StatefulPartitionedCall
activation_36/PartitionedCallPartitionedCall*conv1d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_36_layer_call_and_return_conditional_losses_1758742
activation_36/PartitionedCallã
mer0/PartitionedCallPartitionedCallinputsinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer0_layer_call_and_return_conditional_losses_1758882
mer0/PartitionedCallÌ
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall&activation_36/PartitionedCall:output:0batch_normalization_29_176551batch_normalization_29_176553batch_normalization_29_176555batch_normalization_29_176557*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_17519720
.batch_normalization_29/StatefulPartitionedCallñ
mer3/PartitionedCallPartitionedCallmer0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer3_layer_call_and_return_conditional_losses_1759382
mer3/PartitionedCallÚ
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_1759692$
"dropout_26/StatefulPartitionedCall
mer1/StatefulPartitionedCallStatefulPartitionedCallmer0/PartitionedCall:output:0mer1_176562*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer1_layer_call_and_return_conditional_losses_1760012
mer1/StatefulPartitionedCall
mer4/StatefulPartitionedCallStatefulPartitionedCallmer3/PartitionedCall:output:0mer4_176565*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer4_layer_call_and_return_conditional_losses_1760272
mer4/StatefulPartitionedCallÐ
!conv1d_37/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0conv1d_37_176568conv1d_37_176570*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_37_layer_call_and_return_conditional_losses_1760542#
!conv1d_37/StatefulPartitionedCallù
mer5/PartitionedCallPartitionedCall%mer4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer5_layer_call_and_return_conditional_losses_1760782
mer5/PartitionedCallù
mer2/PartitionedCallPartitionedCall%mer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer2_layer_call_and_return_conditional_losses_1761072
mer2/PartitionedCall
activation_37/PartitionedCallPartitionedCall*conv1d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_37_layer_call_and_return_conditional_losses_1761332
activation_37/PartitionedCall
mer6/PartitionedCallPartitionedCallmer5/PartitionedCall:output:0mer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer6_layer_call_and_return_conditional_losses_1761472
mer6/PartitionedCallÌ
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall&activation_37/PartitionedCall:output:0batch_normalization_30_176577batch_normalization_30_176579batch_normalization_30_176581batch_normalization_30_176583*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_17533720
.batch_normalization_30/StatefulPartitionedCallñ
mer7/PartitionedCallPartitionedCallmer6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer7_layer_call_and_return_conditional_losses_1761982
mer7/PartitionedCallÚ
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0#^dropout_26/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_1762302$
"dropout_27/StatefulPartitionedCallñ
mer8/PartitionedCallPartitionedCallmer7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer8_layer_call_and_return_conditional_losses_1762562
mer8/PartitionedCallñ
mer9/PartitionedCallPartitionedCallmer7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_mer9_layer_call_and_return_conditional_losses_1762852
mer9/PartitionedCallÐ
!conv1d_38/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0conv1d_38_176590conv1d_38_176592*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_38_layer_call_and_return_conditional_losses_1763212#
!conv1d_38/StatefulPartitionedCall
activation_38/PartitionedCallPartitionedCall*conv1d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_activation_38_layer_call_and_return_conditional_losses_1763422
activation_38/PartitionedCall´
mer10/PartitionedCallPartitionedCallmer8/PartitionedCall:output:0mer7/PartitionedCall:output:0mer9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *J
fERC
A__inference_mer10_layer_call_and_return_conditional_losses_1763582
mer10/PartitionedCall§
segm_out/PartitionedCallPartitionedCall&activation_38/PartitionedCall:output:0mer10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_segm_out_layer_call_and_return_conditional_losses_1763742
segm_out/PartitionedCall«
IdentityIdentity!segm_out/PartitionedCall:output:0/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall"^conv1d_34/StatefulPartitionedCall"^conv1d_35/StatefulPartitionedCall"^conv1d_36/StatefulPartitionedCall"^conv1d_37/StatefulPartitionedCall"^conv1d_38/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall^mer1/StatefulPartitionedCall^mer4/StatefulPartitionedCall^norm0/StatefulPartitionedCall^norm4/StatefulPartitionedCall^sinc/StatefulPartitionedCall*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*±
_input_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::::::::::::2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2F
!conv1d_34/StatefulPartitionedCall!conv1d_34/StatefulPartitionedCall2F
!conv1d_35/StatefulPartitionedCall!conv1d_35/StatefulPartitionedCall2F
!conv1d_36/StatefulPartitionedCall!conv1d_36/StatefulPartitionedCall2F
!conv1d_37/StatefulPartitionedCall!conv1d_37/StatefulPartitionedCall2F
!conv1d_38/StatefulPartitionedCall!conv1d_38/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2<
mer1/StatefulPartitionedCallmer1/StatefulPartitionedCall2<
mer4/StatefulPartitionedCallmer4/StatefulPartitionedCall2>
norm0/StatefulPartitionedCallnorm0/StatefulPartitionedCall2>
norm4/StatefulPartitionedCallnorm4/StatefulPartitionedCall2<
sinc/StatefulPartitionedCallsinc/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

\
@__inference_mer2_layer_call_and_return_conditional_losses_178364

inputs
identity[
	truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ÊB2
	truediv/xx
truedivRealDivtruediv/x:output:0inputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
truedivS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *æ$2
add/yo
addAddV2truediv:z:0add/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
addh
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_175090

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:02
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:02
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:02
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:0*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:02
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:0*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:02
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02
batchnorm/add_1è
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ02

Identity"
identityIdentity:output:0*C
_input_shapes2
0:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Å
serving_default±
H
input_8=
serving_default_input_8:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿI
segm_out=
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Æ	
Éµ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-3
layer-11
layer-12
layer_with_weights-4
layer-13
layer-14
layer_with_weights-5
layer-15
layer-16
layer_with_weights-6
layer-17
layer-18
layer_with_weights-7
layer-19
layer-20
layer_with_weights-8
layer-21
layer-22
layer-23
layer-24
layer_with_weights-9
layer-25
layer_with_weights-10
layer-26
layer_with_weights-11
layer-27
layer-28
layer-29
layer-30
 layer_with_weights-12
 layer-31
!layer-32
"layer-33
#layer-34
$layer_with_weights-13
$layer-35
%layer-36
&layer-37
'layer-38
(layer-39
)layer-40
*	optimizer
+trainable_variables
,regularization_losses
-	variables
.	keras_api
/
signatures
ö__call__
÷_default_save_signature
+ø&call_and_return_all_conditional_losses"Ö¬
_tf_keras_network¹¬{"class_name": "Functional", "name": "conv_segm", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "conv_segm", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}, "name": "input_8", "inbound_nodes": []}, {"class_name": "Conv1D", "config": {"name": "sinc", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [64]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "sinc", "inbound_nodes": [[["input_8", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "norm0", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [301]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "norm0", "inbound_nodes": [[["sinc", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "norm1", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAMAAAATAAAAcwwAAAB8AGQBiAAbABQAUwApAk5nAAAAAAAA8D+pACkB2gF4\nKQHaBndpbmRvd3IBAAAA+h88aXB5dGhvbi1pbnB1dC0xNi1jM2ZhYWRmNTg1OWY+2gg8bGFtYmRh\nPisAAADzAAAAAA==\n", null, {"class_name": "__tuple__", "items": [301]}]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "norm1", "inbound_nodes": [[["norm0", 0, 0, {}]]]}, {"class_name": "Subtract", "config": {"name": "norm2", "trainable": false, "dtype": "float32"}, "name": "norm2", "inbound_nodes": [[["input_8", 0, 0, {}], ["norm1", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "norm3", "trainable": false, "dtype": "float32"}, "name": "norm3", "inbound_nodes": [[["norm2", 0, 0, {}], ["norm2", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "norm4", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [301]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "norm4", "inbound_nodes": [[["norm3", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "norm5", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAYAAAATAAAAcxoAAABkAXQAoAF8AGQCiAAbABQAoQFkAxcAGwBTACkETukB\nAAAAZwAAAAAAAPA/Z7yJ2Jey0pw8KQLaAUvaBHNxcnQpAdoBeCkB2gZ3aW5kb3epAPofPGlweXRo\nb24taW5wdXQtMTYtYzNmYWFkZjU4NTlmPtoIPGxhbWJkYT44AAAA8wAAAAA=\n", null, {"class_name": "__tuple__", "items": [301]}]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "norm5", "inbound_nodes": [[["norm4", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "norm6", "trainable": false, "dtype": "float32"}, "name": "norm6", "inbound_nodes": [[["input_8", 0, 0, {}], ["norm5", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "norm7", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAYAAABTAAAAcx4AAABkAXQAagF0AKACfAChAWQBZAJkA40DZAQXABsAUwAp\nBU7pAQAAAFQpAtoEYXhpc9oIa2VlcGRpbXNnvInYl7LSnDwpA9oBS9oDbWF42gNhYnMpAdoBeKkA\ncggAAAD6HzxpcHl0aG9uLWlucHV0LTE2LWMzZmFhZGY1ODU5Zj7aCDxsYW1iZGE+OgAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "norm7", "inbound_nodes": [[["norm6", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "norm8", "trainable": false, "dtype": "float32"}, "name": "norm8", "inbound_nodes": [[["norm6", 0, 0, {}], ["norm7", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_34", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [25]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_34", "inbound_nodes": [[["norm8", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_34", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_34", "inbound_nodes": [[["conv1d_34", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_27", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_27", "inbound_nodes": [[["activation_34", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_24", "trainable": true, "dtype": "float32", "rate": 0.12415743337384923, "noise_shape": null, "seed": 37}, "name": "dropout_24", "inbound_nodes": [[["batch_normalization_27", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_35", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [25]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_35", "inbound_nodes": [[["dropout_24", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_35", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_35", "inbound_nodes": [[["conv1d_35", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_28", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_28", "inbound_nodes": [[["activation_35", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_25", "trainable": true, "dtype": "float32", "rate": 0.05611714515087899, "noise_shape": null, "seed": 37}, "name": "dropout_25", "inbound_nodes": [[["batch_normalization_28", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_36", "trainable": true, "dtype": "float32", "filters": 72, "kernel_size": {"class_name": "__tuple__", "items": [25]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_36", "inbound_nodes": [[["dropout_25", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_36", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_36", "inbound_nodes": [[["conv1d_36", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_29", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_29", "inbound_nodes": [[["activation_36", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "mer0", "trainable": false, "dtype": "float32"}, "name": "mer0", "inbound_nodes": [[["input_8", 0, 0, {}], ["input_8", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_26", "trainable": true, "dtype": "float32", "rate": 0.21011153732611265, "noise_shape": null, "seed": 37}, "name": "dropout_26", "inbound_nodes": [[["batch_normalization_29", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "mer3", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTukBAAAAKQHaBGF4ZXMp\nAtoBS9oHcmV2ZXJzZSkB2gF4qQByBgAAAPofPGlweXRob24taW5wdXQtMTYtYzNmYWFkZjU4NTlm\nPtoIPGxhbWJkYT5qAAAA8wAAAAA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "mer3", "inbound_nodes": [[["mer0", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_37", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [25]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_37", "inbound_nodes": [[["dropout_26", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "mer4", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [101]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mer4", "inbound_nodes": [[["mer3", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "mer1", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [101]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mer1", "inbound_nodes": [[["mer0", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_37", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_37", "inbound_nodes": [[["conv1d_37", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "mer5", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAAATAAAAcxIAAAB0AGoBfACIABsAZAFkAo0CUwApA07pAQAAACkB2gRh\neGVzKQLaAUvaB3JldmVyc2UpAdoBeCkB2gV3X21lcqkA+h88aXB5dGhvbi1pbnB1dC0xNi1jM2Zh\nYWRmNTg1OWY+2gg8bGFtYmRhPnQAAADzAAAAAA==\n", null, {"class_name": "__tuple__", "items": [101]}]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "mer5", "inbound_nodes": [[["mer4", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "mer2", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAIAAAATAAAAcwwAAACIAHwAGwBkARcAUwApAk5nvInYl7LSnDypACkB2gF4\nKQHaBXdfbWVycgEAAAD6HzxpcHl0aG9uLWlucHV0LTE2LWMzZmFhZGY1ODU5Zj7aCDxsYW1iZGE+\naAAAAPMAAAAA\n", null, {"class_name": "__tuple__", "items": [101]}]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "mer2", "inbound_nodes": [[["mer1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_30", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_30", "inbound_nodes": [[["activation_37", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "mer6", "trainable": false, "dtype": "float32"}, "name": "mer6", "inbound_nodes": [[["mer5", 0, 0, {}], ["mer2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_27", "trainable": true, "dtype": "float32", "rate": 0.16568645836522974, "noise_shape": null, "seed": 37}, "name": "dropout_27", "inbound_nodes": [[["batch_normalization_30", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "mer7", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcxIAAAB0AGoBfABkAWsEZAJkA40CUwApBE7pAwAAANoHZmxv\nYXQzMikB2gVkdHlwZSkC2gFL2gRjYXN0KQHaAXipAHIHAAAA+h88aXB5dGhvbi1pbnB1dC0xNi1j\nM2ZhYWRmNTg1OWY+2gg8bGFtYmRhPncAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "mer7", "inbound_nodes": [[["mer6", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_38", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [128]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_38", "inbound_nodes": [[["dropout_27", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "mer8", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAIAAABTAAAAcwwAAAB8AGQBFABkAhcAUwApA07pAAAAAOkBAAAAqQApAdoB\neHIDAAAAcgMAAAD6HzxpcHl0aG9uLWlucHV0LTE2LWMzZmFhZGY1ODU5Zj7aCDxsYW1iZGE+eAAA\nAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "mer8", "inbound_nodes": [[["mer7", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "mer9", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAIAAABTAAAAcwwAAAB8AGQBFABkAhcAUwApA07pAAAAAOkBAAAAqQApAdoB\neHIDAAAAcgMAAAD6HzxpcHl0aG9uLWlucHV0LTE2LWMzZmFhZGY1ODU5Zj7aCDxsYW1iZGE+eQAA\nAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "mer9", "inbound_nodes": [[["mer7", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_38", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "name": "activation_38", "inbound_nodes": [[["conv1d_38", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "mer10", "trainable": false, "dtype": "float32", "axis": -1}, "name": "mer10", "inbound_nodes": [[["mer8", 0, 0, {}], ["mer7", 0, 0, {}], ["mer9", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "segm_out", "trainable": true, "dtype": "float32"}, "name": "segm_out", "inbound_nodes": [[["activation_38", 0, 0, {}], ["mer10", 0, 0, {}]]]}], "input_layers": [["input_8", 0, 0]], "output_layers": [["segm_out", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "conv_segm", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}, "name": "input_8", "inbound_nodes": []}, {"class_name": "Conv1D", "config": {"name": "sinc", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [64]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "sinc", "inbound_nodes": [[["input_8", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "norm0", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [301]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "norm0", "inbound_nodes": [[["sinc", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "norm1", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAMAAAATAAAAcwwAAAB8AGQBiAAbABQAUwApAk5nAAAAAAAA8D+pACkB2gF4\nKQHaBndpbmRvd3IBAAAA+h88aXB5dGhvbi1pbnB1dC0xNi1jM2ZhYWRmNTg1OWY+2gg8bGFtYmRh\nPisAAADzAAAAAA==\n", null, {"class_name": "__tuple__", "items": [301]}]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "norm1", "inbound_nodes": [[["norm0", 0, 0, {}]]]}, {"class_name": "Subtract", "config": {"name": "norm2", "trainable": false, "dtype": "float32"}, "name": "norm2", "inbound_nodes": [[["input_8", 0, 0, {}], ["norm1", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "norm3", "trainable": false, "dtype": "float32"}, "name": "norm3", "inbound_nodes": [[["norm2", 0, 0, {}], ["norm2", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "norm4", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [301]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "norm4", "inbound_nodes": [[["norm3", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "norm5", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAYAAAATAAAAcxoAAABkAXQAoAF8AGQCiAAbABQAoQFkAxcAGwBTACkETukB\nAAAAZwAAAAAAAPA/Z7yJ2Jey0pw8KQLaAUvaBHNxcnQpAdoBeCkB2gZ3aW5kb3epAPofPGlweXRo\nb24taW5wdXQtMTYtYzNmYWFkZjU4NTlmPtoIPGxhbWJkYT44AAAA8wAAAAA=\n", null, {"class_name": "__tuple__", "items": [301]}]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "norm5", "inbound_nodes": [[["norm4", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "norm6", "trainable": false, "dtype": "float32"}, "name": "norm6", "inbound_nodes": [[["input_8", 0, 0, {}], ["norm5", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "norm7", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAYAAABTAAAAcx4AAABkAXQAagF0AKACfAChAWQBZAJkA40DZAQXABsAUwAp\nBU7pAQAAAFQpAtoEYXhpc9oIa2VlcGRpbXNnvInYl7LSnDwpA9oBS9oDbWF42gNhYnMpAdoBeKkA\ncggAAAD6HzxpcHl0aG9uLWlucHV0LTE2LWMzZmFhZGY1ODU5Zj7aCDxsYW1iZGE+OgAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "norm7", "inbound_nodes": [[["norm6", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "norm8", "trainable": false, "dtype": "float32"}, "name": "norm8", "inbound_nodes": [[["norm6", 0, 0, {}], ["norm7", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_34", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [25]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_34", "inbound_nodes": [[["norm8", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_34", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_34", "inbound_nodes": [[["conv1d_34", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_27", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_27", "inbound_nodes": [[["activation_34", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_24", "trainable": true, "dtype": "float32", "rate": 0.12415743337384923, "noise_shape": null, "seed": 37}, "name": "dropout_24", "inbound_nodes": [[["batch_normalization_27", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_35", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [25]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_35", "inbound_nodes": [[["dropout_24", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_35", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_35", "inbound_nodes": [[["conv1d_35", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_28", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_28", "inbound_nodes": [[["activation_35", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_25", "trainable": true, "dtype": "float32", "rate": 0.05611714515087899, "noise_shape": null, "seed": 37}, "name": "dropout_25", "inbound_nodes": [[["batch_normalization_28", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_36", "trainable": true, "dtype": "float32", "filters": 72, "kernel_size": {"class_name": "__tuple__", "items": [25]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_36", "inbound_nodes": [[["dropout_25", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_36", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_36", "inbound_nodes": [[["conv1d_36", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_29", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_29", "inbound_nodes": [[["activation_36", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "mer0", "trainable": false, "dtype": "float32"}, "name": "mer0", "inbound_nodes": [[["input_8", 0, 0, {}], ["input_8", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_26", "trainable": true, "dtype": "float32", "rate": 0.21011153732611265, "noise_shape": null, "seed": 37}, "name": "dropout_26", "inbound_nodes": [[["batch_normalization_29", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "mer3", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTukBAAAAKQHaBGF4ZXMp\nAtoBS9oHcmV2ZXJzZSkB2gF4qQByBgAAAPofPGlweXRob24taW5wdXQtMTYtYzNmYWFkZjU4NTlm\nPtoIPGxhbWJkYT5qAAAA8wAAAAA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "mer3", "inbound_nodes": [[["mer0", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_37", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [25]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_37", "inbound_nodes": [[["dropout_26", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "mer4", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [101]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mer4", "inbound_nodes": [[["mer3", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "mer1", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [101]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mer1", "inbound_nodes": [[["mer0", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_37", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_37", "inbound_nodes": [[["conv1d_37", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "mer5", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAAATAAAAcxIAAAB0AGoBfACIABsAZAFkAo0CUwApA07pAQAAACkB2gRh\neGVzKQLaAUvaB3JldmVyc2UpAdoBeCkB2gV3X21lcqkA+h88aXB5dGhvbi1pbnB1dC0xNi1jM2Zh\nYWRmNTg1OWY+2gg8bGFtYmRhPnQAAADzAAAAAA==\n", null, {"class_name": "__tuple__", "items": [101]}]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "mer5", "inbound_nodes": [[["mer4", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "mer2", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAIAAAATAAAAcwwAAACIAHwAGwBkARcAUwApAk5nvInYl7LSnDypACkB2gF4\nKQHaBXdfbWVycgEAAAD6HzxpcHl0aG9uLWlucHV0LTE2LWMzZmFhZGY1ODU5Zj7aCDxsYW1iZGE+\naAAAAPMAAAAA\n", null, {"class_name": "__tuple__", "items": [101]}]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "mer2", "inbound_nodes": [[["mer1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_30", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_30", "inbound_nodes": [[["activation_37", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "mer6", "trainable": false, "dtype": "float32"}, "name": "mer6", "inbound_nodes": [[["mer5", 0, 0, {}], ["mer2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_27", "trainable": true, "dtype": "float32", "rate": 0.16568645836522974, "noise_shape": null, "seed": 37}, "name": "dropout_27", "inbound_nodes": [[["batch_normalization_30", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "mer7", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcxIAAAB0AGoBfABkAWsEZAJkA40CUwApBE7pAwAAANoHZmxv\nYXQzMikB2gVkdHlwZSkC2gFL2gRjYXN0KQHaAXipAHIHAAAA+h88aXB5dGhvbi1pbnB1dC0xNi1j\nM2ZhYWRmNTg1OWY+2gg8bGFtYmRhPncAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "mer7", "inbound_nodes": [[["mer6", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_38", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [128]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_38", "inbound_nodes": [[["dropout_27", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "mer8", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAIAAABTAAAAcwwAAAB8AGQBFABkAhcAUwApA07pAAAAAOkBAAAAqQApAdoB\neHIDAAAAcgMAAAD6HzxpcHl0aG9uLWlucHV0LTE2LWMzZmFhZGY1ODU5Zj7aCDxsYW1iZGE+eAAA\nAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "mer8", "inbound_nodes": [[["mer7", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "mer9", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAIAAABTAAAAcwwAAAB8AGQBFABkAhcAUwApA07pAAAAAOkBAAAAqQApAdoB\neHIDAAAAcgMAAAD6HzxpcHl0aG9uLWlucHV0LTE2LWMzZmFhZGY1ODU5Zj7aCDxsYW1iZGE+eQAA\nAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "mer9", "inbound_nodes": [[["mer7", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_38", "trainable": true, "dtype": "float32", "activation": "sigmoid"}, "name": "activation_38", "inbound_nodes": [[["conv1d_38", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "mer10", "trainable": false, "dtype": "float32", "axis": -1}, "name": "mer10", "inbound_nodes": [[["mer8", 0, 0, {}], ["mer7", 0, 0, {}], ["mer9", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "segm_out", "trainable": true, "dtype": "float32"}, "name": "segm_out", "inbound_nodes": [[["activation_38", 0, 0, {}], ["mer10", 0, 0, {}]]]}], "input_layers": [["input_8", 0, 0]], "output_layers": [["segm_out", 0, 0]]}}, "training_config": {"loss": "custom_loss1", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "custom_metric", "dtype": "float32", "fn": "custom_metric"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 6.872044309586067e-05, "decay": 9.999999747378752e-05, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
õ"ò
_tf_keras_input_layerÒ{"class_name": "InputLayer", "name": "input_8", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}}
Ä	

0kernel
1trainable_variables
2regularization_losses
3	variables
4	keras_api
ù__call__
+ú&call_and_return_all_conditional_losses"§
_tf_keras_layer{"class_name": "Conv1D", "name": "sinc", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "sinc", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [64]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 1]}}
Ê	

5kernel
6trainable_variables
7regularization_losses
8	variables
9	keras_api
û__call__
+ü&call_and_return_all_conditional_losses"­
_tf_keras_layer{"class_name": "Conv1D", "name": "norm0", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "norm0", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [301]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 32]}}
Ú
:trainable_variables
;regularization_losses
<	variables
=	keras_api
ý__call__
+þ&call_and_return_all_conditional_losses"É
_tf_keras_layer¯{"class_name": "Lambda", "name": "norm1", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "norm1", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAMAAAATAAAAcwwAAAB8AGQBiAAbABQAUwApAk5nAAAAAAAA8D+pACkB2gF4\nKQHaBndpbmRvd3IBAAAA+h88aXB5dGhvbi1pbnB1dC0xNi1jM2ZhYWRmNTg1OWY+2gg8bGFtYmRh\nPisAAADzAAAAAA==\n", null, {"class_name": "__tuple__", "items": [301]}]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
¼
>trainable_variables
?regularization_losses
@	variables
A	keras_api
ÿ__call__
+&call_and_return_all_conditional_losses"«
_tf_keras_layer{"class_name": "Subtract", "name": "norm2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "norm2", "trainable": false, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 1]}, {"class_name": "TensorShape", "items": [null, null, 1]}]}
¼
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
__call__
+&call_and_return_all_conditional_losses"«
_tf_keras_layer{"class_name": "Multiply", "name": "norm3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "norm3", "trainable": false, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 1]}, {"class_name": "TensorShape", "items": [null, null, 1]}]}
È	

Fkernel
Gtrainable_variables
Hregularization_losses
I	variables
J	keras_api
__call__
+&call_and_return_all_conditional_losses"«
_tf_keras_layer{"class_name": "Conv1D", "name": "norm4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "norm4", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [301]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 1]}}

Ktrainable_variables
Lregularization_losses
M	variables
N	keras_api
__call__
+&call_and_return_all_conditional_losses"õ
_tf_keras_layerÛ{"class_name": "Lambda", "name": "norm5", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "norm5", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAYAAAATAAAAcxoAAABkAXQAoAF8AGQCiAAbABQAoQFkAxcAGwBTACkETukB\nAAAAZwAAAAAAAPA/Z7yJ2Jey0pw8KQLaAUvaBHNxcnQpAdoBeCkB2gZ3aW5kb3epAPofPGlweXRo\nb24taW5wdXQtMTYtYzNmYWFkZjU4NTlmPtoIPGxhbWJkYT44AAAA8wAAAAA=\n", null, {"class_name": "__tuple__", "items": [301]}]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
¼
Otrainable_variables
Pregularization_losses
Q	variables
R	keras_api
__call__
+&call_and_return_all_conditional_losses"«
_tf_keras_layer{"class_name": "Multiply", "name": "norm6", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "norm6", "trainable": false, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 1]}, {"class_name": "TensorShape", "items": [null, null, 1]}]}
ï
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
__call__
+&call_and_return_all_conditional_losses"Þ
_tf_keras_layerÄ{"class_name": "Lambda", "name": "norm7", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "norm7", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAYAAABTAAAAcx4AAABkAXQAagF0AKACfAChAWQBZAJkA40DZAQXABsAUwAp\nBU7pAQAAAFQpAtoEYXhpc9oIa2VlcGRpbXNnvInYl7LSnDwpA9oBS9oDbWF42gNhYnMpAdoBeKkA\ncggAAAD6HzxpcHl0aG9uLWlucHV0LTE2LWMzZmFhZGY1ODU5Zj7aCDxsYW1iZGE+OgAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
¹
Wtrainable_variables
Xregularization_losses
Y	variables
Z	keras_api
__call__
+&call_and_return_all_conditional_losses"¨
_tf_keras_layer{"class_name": "Multiply", "name": "norm8", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "norm8", "trainable": false, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 1]}, {"class_name": "TensorShape", "items": [null, 1, 1]}]}
ì	

[kernel
\bias
]trainable_variables
^regularization_losses
_	variables
`	keras_api
__call__
+&call_and_return_all_conditional_losses"Å
_tf_keras_layer«{"class_name": "Conv1D", "name": "conv1d_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_34", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [25]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 1]}}
Ù
atrainable_variables
bregularization_losses
c	variables
d	keras_api
__call__
+&call_and_return_all_conditional_losses"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_34", "trainable": true, "dtype": "float32", "activation": "relu"}}
¼	
eaxis
	fgamma
gbeta
hmoving_mean
imoving_variance
jtrainable_variables
kregularization_losses
l	variables
m	keras_api
__call__
+&call_and_return_all_conditional_losses"æ
_tf_keras_layerÌ{"class_name": "BatchNormalization", "name": "batch_normalization_27", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_27", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 24]}}
÷
ntrainable_variables
oregularization_losses
p	variables
q	keras_api
__call__
+&call_and_return_all_conditional_losses"æ
_tf_keras_layerÌ{"class_name": "Dropout", "name": "dropout_24", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_24", "trainable": true, "dtype": "float32", "rate": 0.12415743337384923, "noise_shape": null, "seed": 37}}
î	

rkernel
sbias
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
__call__
+&call_and_return_all_conditional_losses"Ç
_tf_keras_layer­{"class_name": "Conv1D", "name": "conv1d_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_35", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [25]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 24]}}
Ù
xtrainable_variables
yregularization_losses
z	variables
{	keras_api
__call__
+&call_and_return_all_conditional_losses"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_35", "trainable": true, "dtype": "float32", "activation": "relu"}}
Á	
|axis
	}gamma
~beta
moving_mean
moving_variance
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"æ
_tf_keras_layerÌ{"class_name": "BatchNormalization", "name": "batch_normalization_28", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_28", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 48]}}
û
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"æ
_tf_keras_layerÌ{"class_name": "Dropout", "name": "dropout_25", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_25", "trainable": true, "dtype": "float32", "rate": 0.05611714515087899, "noise_shape": null, "seed": 37}}
ô	
kernel
	bias
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"Ç
_tf_keras_layer­{"class_name": "Conv1D", "name": "conv1d_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_36", "trainable": true, "dtype": "float32", "filters": 72, "kernel_size": {"class_name": "__tuple__", "items": [25]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 48}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 48]}}
Ý
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+ &call_and_return_all_conditional_losses"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_36", "trainable": true, "dtype": "float32", "activation": "relu"}}
Å	
	axis

gamma
	beta
moving_mean
moving_variance
trainable_variables
regularization_losses
	variables
	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses"æ
_tf_keras_layerÌ{"class_name": "BatchNormalization", "name": "batch_normalization_29", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_29", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 72}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 72]}}
¾
trainable_variables
regularization_losses
	variables
	keras_api
£__call__
+¤&call_and_return_all_conditional_losses"©
_tf_keras_layer{"class_name": "Multiply", "name": "mer0", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "mer0", "trainable": false, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 1]}, {"class_name": "TensorShape", "items": [null, null, 1]}]}
û
 trainable_variables
¡regularization_losses
¢	variables
£	keras_api
¥__call__
+¦&call_and_return_all_conditional_losses"æ
_tf_keras_layerÌ{"class_name": "Dropout", "name": "dropout_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_26", "trainable": true, "dtype": "float32", "rate": 0.21011153732611265, "noise_shape": null, "seed": 37}}
Á
¤trainable_variables
¥regularization_losses
¦	variables
§	keras_api
§__call__
+¨&call_and_return_all_conditional_losses"¬
_tf_keras_layer{"class_name": "Lambda", "name": "mer3", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "mer3", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTukBAAAAKQHaBGF4ZXMp\nAtoBS9oHcmV2ZXJzZSkB2gF4qQByBgAAAPofPGlweXRob24taW5wdXQtMTYtYzNmYWFkZjU4NTlm\nPtoIPGxhbWJkYT5qAAAA8wAAAAA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
ô	
¨kernel
	©bias
ªtrainable_variables
«regularization_losses
¬	variables
­	keras_api
©__call__
+ª&call_and_return_all_conditional_losses"Ç
_tf_keras_layer­{"class_name": "Conv1D", "name": "conv1d_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_37", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [25]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 72}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 72]}}
Í	
®kernel
¯trainable_variables
°regularization_losses
±	variables
²	keras_api
«__call__
+¬&call_and_return_all_conditional_losses"«
_tf_keras_layer{"class_name": "Conv1D", "name": "mer4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "mer4", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [101]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 1]}}
Í	
³kernel
´trainable_variables
µregularization_losses
¶	variables
·	keras_api
­__call__
+®&call_and_return_all_conditional_losses"«
_tf_keras_layer{"class_name": "Conv1D", "name": "mer1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "mer1", "trainable": false, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [101]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "causal", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "Ones", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 1]}}
Ý
¸trainable_variables
¹regularization_losses
º	variables
»	keras_api
¯__call__
+°&call_and_return_all_conditional_losses"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_37", "trainable": true, "dtype": "float32", "activation": "relu"}}
ô
¼trainable_variables
½regularization_losses
¾	variables
¿	keras_api
±__call__
+²&call_and_return_all_conditional_losses"ß
_tf_keras_layerÅ{"class_name": "Lambda", "name": "mer5", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "mer5", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAAATAAAAcxIAAAB0AGoBfACIABsAZAFkAo0CUwApA07pAQAAACkB2gRh\neGVzKQLaAUvaB3JldmVyc2UpAdoBeCkB2gV3X21lcqkA+h88aXB5dGhvbi1pbnB1dC0xNi1jM2Zh\nYWRmNTg1OWY+2gg8bGFtYmRhPnQAAADzAAAAAA==\n", null, {"class_name": "__tuple__", "items": [101]}]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
Ø
Àtrainable_variables
Áregularization_losses
Â	variables
Ã	keras_api
³__call__
+´&call_and_return_all_conditional_losses"Ã
_tf_keras_layer©{"class_name": "Lambda", "name": "mer2", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "mer2", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAIAAAATAAAAcwwAAACIAHwAGwBkARcAUwApAk5nvInYl7LSnDypACkB2gF4\nKQHaBXdfbWVycgEAAAD6HzxpcHl0aG9uLWlucHV0LTE2LWMzZmFhZGY1ODU5Zj7aCDxsYW1iZGE+\naAAAAPMAAAAA\n", null, {"class_name": "__tuple__", "items": [101]}]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
Å	
	Äaxis

Ågamma
	Æbeta
Çmoving_mean
Èmoving_variance
Étrainable_variables
Êregularization_losses
Ë	variables
Ì	keras_api
µ__call__
+¶&call_and_return_all_conditional_losses"æ
_tf_keras_layerÌ{"class_name": "BatchNormalization", "name": "batch_normalization_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_30", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 96]}}
¾
Ítrainable_variables
Îregularization_losses
Ï	variables
Ð	keras_api
·__call__
+¸&call_and_return_all_conditional_losses"©
_tf_keras_layer{"class_name": "Multiply", "name": "mer6", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "mer6", "trainable": false, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 1]}, {"class_name": "TensorShape", "items": [null, null, 1]}]}
û
Ñtrainable_variables
Òregularization_losses
Ó	variables
Ô	keras_api
¹__call__
+º&call_and_return_all_conditional_losses"æ
_tf_keras_layerÌ{"class_name": "Dropout", "name": "dropout_27", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_27", "trainable": true, "dtype": "float32", "rate": 0.16568645836522974, "noise_shape": null, "seed": 37}}
Ñ
Õtrainable_variables
Öregularization_losses
×	variables
Ø	keras_api
»__call__
+¼&call_and_return_all_conditional_losses"¼
_tf_keras_layer¢{"class_name": "Lambda", "name": "mer7", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "mer7", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcxIAAAB0AGoBfABkAWsEZAJkA40CUwApBE7pAwAAANoHZmxv\nYXQzMikB2gVkdHlwZSkC2gFL2gRjYXN0KQHaAXipAHIHAAAA+h88aXB5dGhvbi1pbnB1dC0xNi1j\nM2ZhYWRmNTg1OWY+2gg8bGFtYmRhPncAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
ô	
Ùkernel
	Úbias
Ûtrainable_variables
Üregularization_losses
Ý	variables
Þ	keras_api
½__call__
+¾&call_and_return_all_conditional_losses"Ç
_tf_keras_layer­{"class_name": "Conv1D", "name": "conv1d_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_38", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [128]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 96]}}
­
ßtrainable_variables
àregularization_losses
á	variables
â	keras_api
¿__call__
+À&call_and_return_all_conditional_losses"
_tf_keras_layerþ{"class_name": "Lambda", "name": "mer8", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "mer8", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAIAAABTAAAAcwwAAAB8AGQBFABkAhcAUwApA07pAAAAAOkBAAAAqQApAdoB\neHIDAAAAcgMAAAD6HzxpcHl0aG9uLWlucHV0LTE2LWMzZmFhZGY1ODU5Zj7aCDxsYW1iZGE+eAAA\nAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
­
ãtrainable_variables
äregularization_losses
å	variables
æ	keras_api
Á__call__
+Â&call_and_return_all_conditional_losses"
_tf_keras_layerþ{"class_name": "Lambda", "name": "mer9", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "mer9", "trainable": false, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAIAAABTAAAAcwwAAAB8AGQBFABkAhcAUwApA07pAAAAAOkBAAAAqQApAdoB\neHIDAAAAcgMAAAD6HzxpcHl0aG9uLWlucHV0LTE2LWMzZmFhZGY1ODU5Zj7aCDxsYW1iZGE+eQAA\nAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
à
çtrainable_variables
èregularization_losses
é	variables
ê	keras_api
Ã__call__
+Ä&call_and_return_all_conditional_losses"Ë
_tf_keras_layer±{"class_name": "Activation", "name": "activation_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_38", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}

ëtrainable_variables
ìregularization_losses
í	variables
î	keras_api
Å__call__
+Æ&call_and_return_all_conditional_losses"ó
_tf_keras_layerÙ{"class_name": "Concatenate", "name": "mer10", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "mer10", "trainable": false, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 1]}, {"class_name": "TensorShape", "items": [null, null, 1]}, {"class_name": "TensorShape", "items": [null, null, 1]}]}
Ä
ïtrainable_variables
ðregularization_losses
ñ	variables
ò	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses"¯
_tf_keras_layer{"class_name": "Multiply", "name": "segm_out", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "segm_out", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 3]}, {"class_name": "TensorShape", "items": [null, null, 3]}]}
è
	óiter
ôbeta_1
õbeta_2

ödecay
÷learning_rate0mÐ[mÑ\mÒfmÓgmÔrmÕsmÖ}m×~mØ	mÙ	mÚ	mÛ	mÜ	¨mÝ	©mÞ	Åmß	Æmà	Ùmá	Úmâ0vã[vä\våfvægvçrvèsvé}vê~vë	vì	ví	vî	vï	¨vð	©vñ	Åvò	Ævó	Ùvô	Úvõ"
	optimizer
¸
00
[1
\2
f3
g4
r5
s6
}7
~8
9
10
11
12
¨13
©14
Å15
Æ16
Ù17
Ú18"
trackable_list_wrapper
 "
trackable_list_wrapper

00
51
F2
[3
\4
f5
g6
h7
i8
r9
s10
}11
~12
13
14
15
16
17
18
19
20
¨21
©22
®23
³24
Å25
Æ26
Ç27
È28
Ù29
Ú30"
trackable_list_wrapper
Ó
ømetrics
ùlayers
únon_trainable_variables
+trainable_variables
 ûlayer_regularization_losses
,regularization_losses
ülayer_metrics
-	variables
ö__call__
÷_default_save_signature
+ø&call_and_return_all_conditional_losses
'ø"call_and_return_conditional_losses"
_generic_user_object
-
Éserving_default"
signature_map
!:@ 2sinc/kernel
'
00"
trackable_list_wrapper
 "
trackable_list_wrapper
'
00"
trackable_list_wrapper
µ
ýmetrics
þlayers
ÿnon_trainable_variables
1trainable_variables
 layer_regularization_losses
2regularization_losses
layer_metrics
3	variables
ù__call__
+ú&call_and_return_all_conditional_losses
'ú"call_and_return_conditional_losses"
_generic_user_object
#:!­ 2norm0/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
50"
trackable_list_wrapper
µ
metrics
layers
non_trainable_variables
6trainable_variables
 layer_regularization_losses
7regularization_losses
layer_metrics
8	variables
û__call__
+ü&call_and_return_all_conditional_losses
'ü"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
metrics
layers
non_trainable_variables
:trainable_variables
 layer_regularization_losses
;regularization_losses
layer_metrics
<	variables
ý__call__
+þ&call_and_return_all_conditional_losses
'þ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
metrics
layers
non_trainable_variables
>trainable_variables
 layer_regularization_losses
?regularization_losses
layer_metrics
@	variables
ÿ__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
metrics
layers
non_trainable_variables
Btrainable_variables
 layer_regularization_losses
Cregularization_losses
layer_metrics
D	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
#:!­2norm4/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
F0"
trackable_list_wrapper
µ
metrics
layers
non_trainable_variables
Gtrainable_variables
 layer_regularization_losses
Hregularization_losses
layer_metrics
I	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
metrics
layers
non_trainable_variables
Ktrainable_variables
 layer_regularization_losses
Lregularization_losses
layer_metrics
M	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 metrics
¡layers
¢non_trainable_variables
Otrainable_variables
 £layer_regularization_losses
Pregularization_losses
¤layer_metrics
Q	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¥metrics
¦layers
§non_trainable_variables
Strainable_variables
 ¨layer_regularization_losses
Tregularization_losses
©layer_metrics
U	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ªmetrics
«layers
¬non_trainable_variables
Wtrainable_variables
 ­layer_regularization_losses
Xregularization_losses
®layer_metrics
Y	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
&:$2conv1d_34/kernel
:2conv1d_34/bias
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
µ
¯metrics
°layers
±non_trainable_variables
]trainable_variables
 ²layer_regularization_losses
^regularization_losses
³layer_metrics
_	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
´metrics
µlayers
¶non_trainable_variables
atrainable_variables
 ·layer_regularization_losses
bregularization_losses
¸layer_metrics
c	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_27/gamma
):'2batch_normalization_27/beta
2:0 (2"batch_normalization_27/moving_mean
6:4 (2&batch_normalization_27/moving_variance
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
f0
g1
h2
i3"
trackable_list_wrapper
µ
¹metrics
ºlayers
»non_trainable_variables
jtrainable_variables
 ¼layer_regularization_losses
kregularization_losses
½layer_metrics
l	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¾metrics
¿layers
Ànon_trainable_variables
ntrainable_variables
 Álayer_regularization_losses
oregularization_losses
Âlayer_metrics
p	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
&:$02conv1d_35/kernel
:02conv1d_35/bias
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
µ
Ãmetrics
Älayers
Ånon_trainable_variables
ttrainable_variables
 Ælayer_regularization_losses
uregularization_losses
Çlayer_metrics
v	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Èmetrics
Élayers
Ênon_trainable_variables
xtrainable_variables
 Ëlayer_regularization_losses
yregularization_losses
Ìlayer_metrics
z	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(02batch_normalization_28/gamma
):'02batch_normalization_28/beta
2:00 (2"batch_normalization_28/moving_mean
6:40 (2&batch_normalization_28/moving_variance
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
=
}0
~1
2
3"
trackable_list_wrapper
¸
Ímetrics
Îlayers
Ïnon_trainable_variables
trainable_variables
 Ðlayer_regularization_losses
regularization_losses
Ñlayer_metrics
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Òmetrics
Ólayers
Ônon_trainable_variables
trainable_variables
 Õlayer_regularization_losses
regularization_losses
Ölayer_metrics
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
&:$0H2conv1d_36/kernel
:H2conv1d_36/bias
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
¸
×metrics
Ølayers
Ùnon_trainable_variables
trainable_variables
 Úlayer_regularization_losses
regularization_losses
Ûlayer_metrics
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ümetrics
Ýlayers
Þnon_trainable_variables
trainable_variables
 ßlayer_regularization_losses
regularization_losses
àlayer_metrics
	variables
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(H2batch_normalization_29/gamma
):'H2batch_normalization_29/beta
2:0H (2"batch_normalization_29/moving_mean
6:4H (2&batch_normalization_29/moving_variance
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
@
0
1
2
3"
trackable_list_wrapper
¸
ámetrics
âlayers
ãnon_trainable_variables
trainable_variables
 älayer_regularization_losses
regularization_losses
ålayer_metrics
	variables
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
æmetrics
çlayers
ènon_trainable_variables
trainable_variables
 élayer_regularization_losses
regularization_losses
êlayer_metrics
	variables
£__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ëmetrics
ìlayers
ínon_trainable_variables
 trainable_variables
 îlayer_regularization_losses
¡regularization_losses
ïlayer_metrics
¢	variables
¥__call__
+¦&call_and_return_all_conditional_losses
'¦"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ðmetrics
ñlayers
ònon_trainable_variables
¤trainable_variables
 ólayer_regularization_losses
¥regularization_losses
ôlayer_metrics
¦	variables
§__call__
+¨&call_and_return_all_conditional_losses
'¨"call_and_return_conditional_losses"
_generic_user_object
&:$H`2conv1d_37/kernel
:`2conv1d_37/bias
0
¨0
©1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
¨0
©1"
trackable_list_wrapper
¸
õmetrics
ölayers
÷non_trainable_variables
ªtrainable_variables
 ølayer_regularization_losses
«regularization_losses
ùlayer_metrics
¬	variables
©__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses"
_generic_user_object
!:e2mer4/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
®0"
trackable_list_wrapper
¸
úmetrics
ûlayers
ünon_trainable_variables
¯trainable_variables
 ýlayer_regularization_losses
°regularization_losses
þlayer_metrics
±	variables
«__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
!:e2mer1/kernel
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
³0"
trackable_list_wrapper
¸
ÿmetrics
layers
non_trainable_variables
´trainable_variables
 layer_regularization_losses
µregularization_losses
layer_metrics
¶	variables
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
metrics
layers
non_trainable_variables
¸trainable_variables
 layer_regularization_losses
¹regularization_losses
layer_metrics
º	variables
¯__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
metrics
layers
non_trainable_variables
¼trainable_variables
 layer_regularization_losses
½regularization_losses
layer_metrics
¾	variables
±__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
metrics
layers
non_trainable_variables
Àtrainable_variables
 layer_regularization_losses
Áregularization_losses
layer_metrics
Â	variables
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(`2batch_normalization_30/gamma
):'`2batch_normalization_30/beta
2:0` (2"batch_normalization_30/moving_mean
6:4` (2&batch_normalization_30/moving_variance
0
Å0
Æ1"
trackable_list_wrapper
 "
trackable_list_wrapper
@
Å0
Æ1
Ç2
È3"
trackable_list_wrapper
¸
metrics
layers
non_trainable_variables
Étrainable_variables
 layer_regularization_losses
Êregularization_losses
layer_metrics
Ë	variables
µ__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
metrics
layers
non_trainable_variables
Ítrainable_variables
 layer_regularization_losses
Îregularization_losses
layer_metrics
Ï	variables
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
metrics
layers
non_trainable_variables
Ñtrainable_variables
  layer_regularization_losses
Òregularization_losses
¡layer_metrics
Ó	variables
¹__call__
+º&call_and_return_all_conditional_losses
'º"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¢metrics
£layers
¤non_trainable_variables
Õtrainable_variables
 ¥layer_regularization_losses
Öregularization_losses
¦layer_metrics
×	variables
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses"
_generic_user_object
':%`2conv1d_38/kernel
:2conv1d_38/bias
0
Ù0
Ú1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ù0
Ú1"
trackable_list_wrapper
¸
§metrics
¨layers
©non_trainable_variables
Ûtrainable_variables
 ªlayer_regularization_losses
Üregularization_losses
«layer_metrics
Ý	variables
½__call__
+¾&call_and_return_all_conditional_losses
'¾"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¬metrics
­layers
®non_trainable_variables
ßtrainable_variables
 ¯layer_regularization_losses
àregularization_losses
°layer_metrics
á	variables
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
±metrics
²layers
³non_trainable_variables
ãtrainable_variables
 ´layer_regularization_losses
äregularization_losses
µlayer_metrics
å	variables
Á__call__
+Â&call_and_return_all_conditional_losses
'Â"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¶metrics
·layers
¸non_trainable_variables
çtrainable_variables
 ¹layer_regularization_losses
èregularization_losses
ºlayer_metrics
é	variables
Ã__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
»metrics
¼layers
½non_trainable_variables
ëtrainable_variables
 ¾layer_regularization_losses
ìregularization_losses
¿layer_metrics
í	variables
Å__call__
+Æ&call_and_return_all_conditional_losses
'Æ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Àmetrics
Álayers
Ânon_trainable_variables
ïtrainable_variables
 Ãlayer_regularization_losses
ðregularization_losses
Älayer_metrics
ñ	variables
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
Å0
Æ1"
trackable_list_wrapper
Þ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40"
trackable_list_wrapper
}
50
F1
h2
i3
4
5
6
7
®8
³9
Ç10
È11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
50"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
/
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
®0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
³0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ç0
È1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¿

Çtotal

Ècount
É	variables
Ê	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}


Ëtotal

Ìcount
Í
_fn_kwargs
Î	variables
Ï	keras_api"»
_tf_keras_metric {"class_name": "MeanMetricWrapper", "name": "custom_metric", "dtype": "float32", "config": {"name": "custom_metric", "dtype": "float32", "fn": "custom_metric"}}
:  (2total
:  (2count
0
Ç0
È1"
trackable_list_wrapper
.
É	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ë0
Ì1"
trackable_list_wrapper
.
Î	variables"
_generic_user_object
&:$@ 2Adam/sinc/kernel/m
+:)2Adam/conv1d_34/kernel/m
!:2Adam/conv1d_34/bias/m
/:-2#Adam/batch_normalization_27/gamma/m
.:,2"Adam/batch_normalization_27/beta/m
+:)02Adam/conv1d_35/kernel/m
!:02Adam/conv1d_35/bias/m
/:-02#Adam/batch_normalization_28/gamma/m
.:,02"Adam/batch_normalization_28/beta/m
+:)0H2Adam/conv1d_36/kernel/m
!:H2Adam/conv1d_36/bias/m
/:-H2#Adam/batch_normalization_29/gamma/m
.:,H2"Adam/batch_normalization_29/beta/m
+:)H`2Adam/conv1d_37/kernel/m
!:`2Adam/conv1d_37/bias/m
/:-`2#Adam/batch_normalization_30/gamma/m
.:,`2"Adam/batch_normalization_30/beta/m
,:*`2Adam/conv1d_38/kernel/m
!:2Adam/conv1d_38/bias/m
&:$@ 2Adam/sinc/kernel/v
+:)2Adam/conv1d_34/kernel/v
!:2Adam/conv1d_34/bias/v
/:-2#Adam/batch_normalization_27/gamma/v
.:,2"Adam/batch_normalization_27/beta/v
+:)02Adam/conv1d_35/kernel/v
!:02Adam/conv1d_35/bias/v
/:-02#Adam/batch_normalization_28/gamma/v
.:,02"Adam/batch_normalization_28/beta/v
+:)0H2Adam/conv1d_36/kernel/v
!:H2Adam/conv1d_36/bias/v
/:-H2#Adam/batch_normalization_29/gamma/v
.:,H2"Adam/batch_normalization_29/beta/v
+:)H`2Adam/conv1d_37/kernel/v
!:`2Adam/conv1d_37/bias/v
/:-`2#Adam/batch_normalization_30/gamma/v
.:,`2"Adam/batch_normalization_30/beta/v
,:*`2Adam/conv1d_38/kernel/v
!:2Adam/conv1d_38/bias/v
ö2ó
*__inference_conv_segm_layer_call_fn_177592
*__inference_conv_segm_layer_call_fn_176664
*__inference_conv_segm_layer_call_fn_177525
*__inference_conv_segm_layer_call_fn_176837À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ì2é
!__inference__wrapped_model_174821Ã
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *3¢0
.+
input_8ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
â2ß
E__inference_conv_segm_layer_call_and_return_conditional_losses_177458
E__inference_conv_segm_layer_call_and_return_conditional_losses_177232
E__inference_conv_segm_layer_call_and_return_conditional_losses_176384
E__inference_conv_segm_layer_call_and_return_conditional_losses_176490À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ï2Ì
%__inference_sinc_layer_call_fn_177611¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_sinc_layer_call_and_return_conditional_losses_177604¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_norm0_layer_call_fn_177630¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_norm0_layer_call_and_return_conditional_losses_177623¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
&__inference_norm1_layer_call_fn_177647
&__inference_norm1_layer_call_fn_177652À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ì2É
A__inference_norm1_layer_call_and_return_conditional_losses_177642
A__inference_norm1_layer_call_and_return_conditional_losses_177636À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
&__inference_norm2_layer_call_fn_177664¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_norm2_layer_call_and_return_conditional_losses_177658¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_norm3_layer_call_fn_177676¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_norm3_layer_call_and_return_conditional_losses_177670¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_norm4_layer_call_fn_177695¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_norm4_layer_call_and_return_conditional_losses_177688¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
&__inference_norm5_layer_call_fn_177730
&__inference_norm5_layer_call_fn_177735À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ì2É
A__inference_norm5_layer_call_and_return_conditional_losses_177725
A__inference_norm5_layer_call_and_return_conditional_losses_177710À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
&__inference_norm6_layer_call_fn_177747¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_norm6_layer_call_and_return_conditional_losses_177741¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
&__inference_norm7_layer_call_fn_177774
&__inference_norm7_layer_call_fn_177779À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ì2É
A__inference_norm7_layer_call_and_return_conditional_losses_177769
A__inference_norm7_layer_call_and_return_conditional_losses_177758À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ð2Í
&__inference_norm8_layer_call_fn_177791¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_norm8_layer_call_and_return_conditional_losses_177785¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
*__inference_conv1d_34_layer_call_fn_177815¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv1d_34_layer_call_and_return_conditional_losses_177806¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_activation_34_layer_call_fn_177825¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_activation_34_layer_call_and_return_conditional_losses_177820¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¬2©
7__inference_batch_normalization_27_layer_call_fn_177894
7__inference_batch_normalization_27_layer_call_fn_177907´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_177861
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_177881´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
+__inference_dropout_24_layer_call_fn_177934
+__inference_dropout_24_layer_call_fn_177929´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_24_layer_call_and_return_conditional_losses_177924
F__inference_dropout_24_layer_call_and_return_conditional_losses_177919´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
*__inference_conv1d_35_layer_call_fn_177958¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv1d_35_layer_call_and_return_conditional_losses_177949¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_activation_35_layer_call_fn_177968¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_activation_35_layer_call_and_return_conditional_losses_177963¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¬2©
7__inference_batch_normalization_28_layer_call_fn_178050
7__inference_batch_normalization_28_layer_call_fn_178037´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_178004
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_178024´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
+__inference_dropout_25_layer_call_fn_178077
+__inference_dropout_25_layer_call_fn_178072´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_25_layer_call_and_return_conditional_losses_178062
F__inference_dropout_25_layer_call_and_return_conditional_losses_178067´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
*__inference_conv1d_36_layer_call_fn_178101¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv1d_36_layer_call_and_return_conditional_losses_178092¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_activation_36_layer_call_fn_178111¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_activation_36_layer_call_and_return_conditional_losses_178106¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¬2©
7__inference_batch_normalization_29_layer_call_fn_178180
7__inference_batch_normalization_29_layer_call_fn_178193´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_178167
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_178147´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ï2Ì
%__inference_mer0_layer_call_fn_178205¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_mer0_layer_call_and_return_conditional_losses_178199¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
+__inference_dropout_26_layer_call_fn_178232
+__inference_dropout_26_layer_call_fn_178227´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_26_layer_call_and_return_conditional_losses_178217
F__inference_dropout_26_layer_call_and_return_conditional_losses_178222´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
%__inference_mer3_layer_call_fn_178254
%__inference_mer3_layer_call_fn_178249À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
@__inference_mer3_layer_call_and_return_conditional_losses_178238
@__inference_mer3_layer_call_and_return_conditional_losses_178244À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
*__inference_conv1d_37_layer_call_fn_178278¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv1d_37_layer_call_and_return_conditional_losses_178269¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ï2Ì
%__inference_mer4_layer_call_fn_178299¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_mer4_layer_call_and_return_conditional_losses_178292¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ï2Ì
%__inference_mer1_layer_call_fn_178320¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_mer1_layer_call_and_return_conditional_losses_178313¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_activation_37_layer_call_fn_178330¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_activation_37_layer_call_and_return_conditional_losses_178325¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
%__inference_mer5_layer_call_fn_178351
%__inference_mer5_layer_call_fn_178356À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
@__inference_mer5_layer_call_and_return_conditional_losses_178346
@__inference_mer5_layer_call_and_return_conditional_losses_178338À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
%__inference_mer2_layer_call_fn_178382
%__inference_mer2_layer_call_fn_178377À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
@__inference_mer2_layer_call_and_return_conditional_losses_178364
@__inference_mer2_layer_call_and_return_conditional_losses_178372À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¬2©
7__inference_batch_normalization_30_layer_call_fn_178451
7__inference_batch_normalization_30_layer_call_fn_178464´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_178438
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_178418´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ï2Ì
%__inference_mer6_layer_call_fn_178476¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_mer6_layer_call_and_return_conditional_losses_178470¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
+__inference_dropout_27_layer_call_fn_178498
+__inference_dropout_27_layer_call_fn_178503´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_27_layer_call_and_return_conditional_losses_178493
F__inference_dropout_27_layer_call_and_return_conditional_losses_178488´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
%__inference_mer7_layer_call_fn_178527
%__inference_mer7_layer_call_fn_178522À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
@__inference_mer7_layer_call_and_return_conditional_losses_178510
@__inference_mer7_layer_call_and_return_conditional_losses_178517À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
*__inference_conv1d_38_layer_call_fn_178551¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv1d_38_layer_call_and_return_conditional_losses_178542¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
%__inference_mer8_layer_call_fn_178572
%__inference_mer8_layer_call_fn_178577À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
@__inference_mer8_layer_call_and_return_conditional_losses_178567
@__inference_mer8_layer_call_and_return_conditional_losses_178559À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
%__inference_mer9_layer_call_fn_178598
%__inference_mer9_layer_call_fn_178603À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
@__inference_mer9_layer_call_and_return_conditional_losses_178585
@__inference_mer9_layer_call_and_return_conditional_losses_178593À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
.__inference_activation_38_layer_call_fn_178613¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_activation_38_layer_call_and_return_conditional_losses_178608¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_mer10_layer_call_fn_178628¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_mer10_layer_call_and_return_conditional_losses_178621¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_segm_out_layer_call_fn_178640¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_segm_out_layer_call_and_return_conditional_losses_178634¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ËBÈ
$__inference_signature_wrapper_176914input_8"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 Ù
!__inference__wrapped_model_174821³005F[\ifhgrs}~³®¨©ÈÅÇÆÙÚ=¢:
3¢0
.+
input_8ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@ª=
;
segm_out/,
segm_outÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿
I__inference_activation_34_layer_call_and_return_conditional_losses_177820r<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
.__inference_activation_34_layer_call_fn_177825e<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿
I__inference_activation_35_layer_call_and_return_conditional_losses_177963r<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
.__inference_activation_35_layer_call_fn_177968e<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0¿
I__inference_activation_36_layer_call_and_return_conditional_losses_178106r<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
.__inference_activation_36_layer_call_fn_178111e<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH¿
I__inference_activation_37_layer_call_and_return_conditional_losses_178325r<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
.__inference_activation_37_layer_call_fn_178330e<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`¿
I__inference_activation_38_layer_call_and_return_conditional_losses_178608r<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
.__inference_activation_38_layer_call_fn_178613e<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_177861|hifg@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ò
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_177881|ifhg@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ª
7__inference_batch_normalization_27_layer_call_fn_177894ohifg@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿª
7__inference_batch_normalization_27_layer_call_fn_177907oifhg@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÓ
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_178004}}~@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 Ó
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_178024}}~@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 «
7__inference_batch_normalization_28_layer_call_fn_178037p}~@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0«
7__inference_batch_normalization_28_layer_call_fn_178050p}~@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0×
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_178147@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 ×
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_178167@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 ®
7__inference_batch_normalization_29_layer_call_fn_178180s@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH®
7__inference_batch_normalization_29_layer_call_fn_178193s@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH×
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_178418ÇÈÅÆ@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 ×
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_178438ÈÅÇÆ@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 ®
7__inference_batch_normalization_30_layer_call_fn_178451sÇÈÅÆ@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`®
7__inference_batch_normalization_30_layer_call_fn_178464sÈÅÇÆ@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`¿
E__inference_conv1d_34_layer_call_and_return_conditional_losses_177806v[\<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
*__inference_conv1d_34_layer_call_fn_177815i[\<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿
E__inference_conv1d_35_layer_call_and_return_conditional_losses_177949vrs<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
*__inference_conv1d_35_layer_call_fn_177958irs<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0Á
E__inference_conv1d_36_layer_call_and_return_conditional_losses_178092x<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
*__inference_conv1d_36_layer_call_fn_178101k<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿHÁ
E__inference_conv1d_37_layer_call_and_return_conditional_losses_178269x¨©<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
*__inference_conv1d_37_layer_call_fn_178278k¨©<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`Á
E__inference_conv1d_38_layer_call_and_return_conditional_losses_178542xÙÚ<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
*__inference_conv1d_38_layer_call_fn_178551kÙÚ<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ÷
E__inference_conv_segm_layer_call_and_return_conditional_losses_176384­005F[\hifgrs}~³®¨©ÇÈÅÆÙÚE¢B
;¢8
.+
input_8ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ÷
E__inference_conv_segm_layer_call_and_return_conditional_losses_176490­005F[\ifhgrs}~³®¨©ÈÅÇÆÙÚE¢B
;¢8
.+
input_8ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ö
E__inference_conv_segm_layer_call_and_return_conditional_losses_177232¬005F[\hifgrs}~³®¨©ÇÈÅÆÙÚD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ö
E__inference_conv_segm_layer_call_and_return_conditional_losses_177458¬005F[\ifhgrs}~³®¨©ÈÅÇÆÙÚD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ï
*__inference_conv_segm_layer_call_fn_176664 005F[\hifgrs}~³®¨©ÇÈÅÆÙÚE¢B
;¢8
.+
input_8ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÏ
*__inference_conv_segm_layer_call_fn_176837 005F[\ifhgrs}~³®¨©ÈÅÇÆÙÚE¢B
;¢8
.+
input_8ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÎ
*__inference_conv_segm_layer_call_fn_177525005F[\hifgrs}~³®¨©ÇÈÅÆÙÚD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÎ
*__inference_conv_segm_layer_call_fn_177592005F[\ifhgrs}~³®¨©ÈÅÇÆÙÚD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ
F__inference_dropout_24_layer_call_and_return_conditional_losses_177919v@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 À
F__inference_dropout_24_layer_call_and_return_conditional_losses_177924v@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
+__inference_dropout_24_layer_call_fn_177929i@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
+__inference_dropout_24_layer_call_fn_177934i@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ
F__inference_dropout_25_layer_call_and_return_conditional_losses_178062v@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 À
F__inference_dropout_25_layer_call_and_return_conditional_losses_178067v@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
 
+__inference_dropout_25_layer_call_fn_178072i@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
+__inference_dropout_25_layer_call_fn_178077i@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0À
F__inference_dropout_26_layer_call_and_return_conditional_losses_178217v@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 À
F__inference_dropout_26_layer_call_and_return_conditional_losses_178222v@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
 
+__inference_dropout_26_layer_call_fn_178227i@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
+__inference_dropout_26_layer_call_fn_178232i@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿH
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿHÀ
F__inference_dropout_27_layer_call_and_return_conditional_losses_178488v@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 À
F__inference_dropout_27_layer_call_and_return_conditional_losses_178493v@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
 
+__inference_dropout_27_layer_call_fn_178498i@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
+__inference_dropout_27_layer_call_fn_178503i@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`ï
@__inference_mer0_layer_call_and_return_conditional_losses_178199ªt¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
%__inference_mer0_layer_call_fn_178205t¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ§
A__inference_mer10_layer_call_and_return_conditional_losses_178621áª¢¦
¢

/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/2ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ÿ
&__inference_mer10_layer_call_fn_178628Ôª¢¦
¢

/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/2ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
@__inference_mer1_layer_call_and_return_conditional_losses_178313v³<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
%__inference_mer1_layer_call_fn_178320i³<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾
@__inference_mer2_layer_call_and_return_conditional_losses_178364zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¾
@__inference_mer2_layer_call_and_return_conditional_losses_178372zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
%__inference_mer2_layer_call_fn_178377mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
%__inference_mer2_layer_call_fn_178382mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾
@__inference_mer3_layer_call_and_return_conditional_losses_178238zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¾
@__inference_mer3_layer_call_and_return_conditional_losses_178244zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
%__inference_mer3_layer_call_fn_178249mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
%__inference_mer3_layer_call_fn_178254mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
@__inference_mer4_layer_call_and_return_conditional_losses_178292v®<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
%__inference_mer4_layer_call_fn_178299i®<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾
@__inference_mer5_layer_call_and_return_conditional_losses_178338zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¾
@__inference_mer5_layer_call_and_return_conditional_losses_178346zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
%__inference_mer5_layer_call_fn_178351mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
%__inference_mer5_layer_call_fn_178356mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
@__inference_mer6_layer_call_and_return_conditional_losses_178470ªt¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
%__inference_mer6_layer_call_fn_178476t¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾
@__inference_mer7_layer_call_and_return_conditional_losses_178510zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¾
@__inference_mer7_layer_call_and_return_conditional_losses_178517zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
%__inference_mer7_layer_call_fn_178522mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
%__inference_mer7_layer_call_fn_178527mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾
@__inference_mer8_layer_call_and_return_conditional_losses_178559zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¾
@__inference_mer8_layer_call_and_return_conditional_losses_178567zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
%__inference_mer8_layer_call_fn_178572mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
%__inference_mer8_layer_call_fn_178577mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¾
@__inference_mer9_layer_call_and_return_conditional_losses_178585zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¾
@__inference_mer9_layer_call_and_return_conditional_losses_178593zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
%__inference_mer9_layer_call_fn_178598mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
%__inference_mer9_layer_call_fn_178603mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
A__inference_norm0_layer_call_and_return_conditional_losses_177623u5<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
&__inference_norm0_layer_call_fn_177630h5<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿
A__inference_norm1_layer_call_and_return_conditional_losses_177636zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¿
A__inference_norm1_layer_call_and_return_conditional_losses_177642zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
&__inference_norm1_layer_call_fn_177647mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
&__inference_norm1_layer_call_fn_177652mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð
A__inference_norm2_layer_call_and_return_conditional_losses_177658ªt¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
&__inference_norm2_layer_call_fn_177664t¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð
A__inference_norm3_layer_call_and_return_conditional_losses_177670ªt¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
&__inference_norm3_layer_call_fn_177676t¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
A__inference_norm4_layer_call_and_return_conditional_losses_177688uF<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
&__inference_norm4_layer_call_fn_177695hF<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¿
A__inference_norm5_layer_call_and_return_conditional_losses_177710zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¿
A__inference_norm5_layer_call_and_return_conditional_losses_177725zD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
&__inference_norm5_layer_call_fn_177730mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
&__inference_norm5_layer_call_fn_177735mD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð
A__inference_norm6_layer_call_and_return_conditional_losses_177741ªt¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
&__inference_norm6_layer_call_fn_177747t¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¶
A__inference_norm7_layer_call_and_return_conditional_losses_177758qD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¶
A__inference_norm7_layer_call_and_return_conditional_losses_177769qD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
&__inference_norm7_layer_call_fn_177774dD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_norm7_layer_call_fn_177779dD¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 
ª "ÿÿÿÿÿÿÿÿÿç
A__inference_norm8_layer_call_and_return_conditional_losses_177785¡k¢h
a¢^
\Y
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
&#
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¿
&__inference_norm8_layer_call_fn_177791k¢h
a¢^
\Y
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
&#
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿó
D__inference_segm_out_layer_call_and_return_conditional_losses_178634ªt¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ë
)__inference_segm_out_layer_call_fn_178640t¢q
j¢g
eb
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
/,
inputs/1ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿç
$__inference_signature_wrapper_176914¾005F[\ifhgrs}~³®¨©ÈÅÇÆÙÚH¢E
¢ 
>ª;
9
input_8.+
input_8ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"@ª=
;
segm_out/,
segm_outÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹
@__inference_sinc_layer_call_and_return_conditional_losses_177604u0<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
%__inference_sinc_layer_call_fn_177611h0<¢9
2¢/
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 