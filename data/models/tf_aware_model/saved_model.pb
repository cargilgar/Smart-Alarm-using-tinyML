?? 
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
s
FakeQuantWithMinMaxVars

inputs
min
max
outputs"
num_bitsint"
narrow_rangebool( 
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
?
%quantize_layer_1/quantize_layer_1_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%quantize_layer_1/quantize_layer_1_min
?
9quantize_layer_1/quantize_layer_1_min/Read/ReadVariableOpReadVariableOp%quantize_layer_1/quantize_layer_1_min*
_output_shapes
: *
dtype0
?
%quantize_layer_1/quantize_layer_1_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%quantize_layer_1/quantize_layer_1_max
?
9quantize_layer_1/quantize_layer_1_max/Read/ReadVariableOpReadVariableOp%quantize_layer_1/quantize_layer_1_max*
_output_shapes
: *
dtype0
?
quantize_layer_1/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!quantize_layer_1/optimizer_step
?
3quantize_layer_1/optimizer_step/Read/ReadVariableOpReadVariableOpquantize_layer_1/optimizer_step*
_output_shapes
: *
dtype0
?
quant_dense/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namequant_dense/optimizer_step
?
.quant_dense/optimizer_step/Read/ReadVariableOpReadVariableOpquant_dense/optimizer_step*
_output_shapes
: *
dtype0
?
quant_dense/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_namequant_dense/kernel_min
y
*quant_dense/kernel_min/Read/ReadVariableOpReadVariableOpquant_dense/kernel_min*
_output_shapes
: *
dtype0
?
quant_dense/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_namequant_dense/kernel_max
y
*quant_dense/kernel_max/Read/ReadVariableOpReadVariableOpquant_dense/kernel_max*
_output_shapes
: *
dtype0
?
quant_dense/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!quant_dense/post_activation_min
?
3quant_dense/post_activation_min/Read/ReadVariableOpReadVariableOpquant_dense/post_activation_min*
_output_shapes
: *
dtype0
?
quant_dense/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!quant_dense/post_activation_max
?
3quant_dense/post_activation_max/Read/ReadVariableOpReadVariableOpquant_dense/post_activation_max*
_output_shapes
: *
dtype0
?
quant_dense_1/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namequant_dense_1/optimizer_step
?
0quant_dense_1/optimizer_step/Read/ReadVariableOpReadVariableOpquant_dense_1/optimizer_step*
_output_shapes
: *
dtype0
?
quant_dense_1/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namequant_dense_1/kernel_min
}
,quant_dense_1/kernel_min/Read/ReadVariableOpReadVariableOpquant_dense_1/kernel_min*
_output_shapes
: *
dtype0
?
quant_dense_1/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namequant_dense_1/kernel_max
}
,quant_dense_1/kernel_max/Read/ReadVariableOpReadVariableOpquant_dense_1/kernel_max*
_output_shapes
: *
dtype0
?
!quant_dense_1/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quant_dense_1/post_activation_min
?
5quant_dense_1/post_activation_min/Read/ReadVariableOpReadVariableOp!quant_dense_1/post_activation_min*
_output_shapes
: *
dtype0
?
!quant_dense_1/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quant_dense_1/post_activation_max
?
5quant_dense_1/post_activation_max/Read/ReadVariableOpReadVariableOp!quant_dense_1/post_activation_max*
_output_shapes
: *
dtype0
?
quant_dense_2/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namequant_dense_2/optimizer_step
?
0quant_dense_2/optimizer_step/Read/ReadVariableOpReadVariableOpquant_dense_2/optimizer_step*
_output_shapes
: *
dtype0
?
quant_dense_2/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namequant_dense_2/kernel_min
}
,quant_dense_2/kernel_min/Read/ReadVariableOpReadVariableOpquant_dense_2/kernel_min*
_output_shapes
: *
dtype0
?
quant_dense_2/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namequant_dense_2/kernel_max
}
,quant_dense_2/kernel_max/Read/ReadVariableOpReadVariableOpquant_dense_2/kernel_max*
_output_shapes
: *
dtype0
?
!quant_dense_2/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quant_dense_2/post_activation_min
?
5quant_dense_2/post_activation_min/Read/ReadVariableOpReadVariableOp!quant_dense_2/post_activation_min*
_output_shapes
: *
dtype0
?
!quant_dense_2/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quant_dense_2/post_activation_max
?
5quant_dense_2/post_activation_max/Read/ReadVariableOpReadVariableOp!quant_dense_2/post_activation_max*
_output_shapes
: *
dtype0
?
quant_dense_3/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namequant_dense_3/optimizer_step
?
0quant_dense_3/optimizer_step/Read/ReadVariableOpReadVariableOpquant_dense_3/optimizer_step*
_output_shapes
: *
dtype0
?
quant_dense_3/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namequant_dense_3/kernel_min
}
,quant_dense_3/kernel_min/Read/ReadVariableOpReadVariableOpquant_dense_3/kernel_min*
_output_shapes
: *
dtype0
?
quant_dense_3/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namequant_dense_3/kernel_max
}
,quant_dense_3/kernel_max/Read/ReadVariableOpReadVariableOpquant_dense_3/kernel_max*
_output_shapes
: *
dtype0
?
!quant_dense_3/post_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quant_dense_3/post_activation_min
?
5quant_dense_3/post_activation_min/Read/ReadVariableOpReadVariableOp!quant_dense_3/post_activation_min*
_output_shapes
: *
dtype0
?
!quant_dense_3/post_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!quant_dense_3/post_activation_max
?
5quant_dense_3/post_activation_max/Read/ReadVariableOpReadVariableOp!quant_dense_3/post_activation_max*
_output_shapes
: *
dtype0
?
quant_dropout/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namequant_dropout/optimizer_step
?
0quant_dropout/optimizer_step/Read/ReadVariableOpReadVariableOpquant_dropout/optimizer_step*
_output_shapes
: *
dtype0
?
quant_dense_4/optimizer_stepVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namequant_dense_4/optimizer_step
?
0quant_dense_4/optimizer_step/Read/ReadVariableOpReadVariableOpquant_dense_4/optimizer_step*
_output_shapes
: *
dtype0
?
quant_dense_4/kernel_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namequant_dense_4/kernel_min
}
,quant_dense_4/kernel_min/Read/ReadVariableOpReadVariableOpquant_dense_4/kernel_min*
_output_shapes
: *
dtype0
?
quant_dense_4/kernel_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namequant_dense_4/kernel_max
}
,quant_dense_4/kernel_max/Read/ReadVariableOpReadVariableOpquant_dense_4/kernel_max*
_output_shapes
: *
dtype0
?
 quant_dense_4/pre_activation_minVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" quant_dense_4/pre_activation_min
?
4quant_dense_4/pre_activation_min/Read/ReadVariableOpReadVariableOp quant_dense_4/pre_activation_min*
_output_shapes
: *
dtype0
?
 quant_dense_4/pre_activation_maxVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" quant_dense_4/pre_activation_max
?
4quant_dense_4/pre_activation_max/Read/ReadVariableOpReadVariableOp quant_dense_4/pre_activation_max*
_output_shapes
: *
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
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

: *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

: @*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:?*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	@?*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:@*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	?@*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:@*
dtype0
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
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

: @*
dtype0

Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_2/bias/m
x
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	@?*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_nameAdam/dense_3/kernel/m
?
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	?@*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:@*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

: @*
dtype0

Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_2/bias/v
x
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	@?*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_nameAdam/dense_3/kernel/v
?
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	?@*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:@*
dtype0

NoOpNoOp
?s
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?r
value?rB?r B?r
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api

signatures
?
quantize_layer_1_min
quantize_layer_1_max
quantizer_vars
optimizer_step
	variables
trainable_variables
regularization_losses
	keras_api
?
	layer
optimizer_step
_weight_vars

kernel_min

kernel_max
_quantize_activations
post_activation_min
post_activation_max
_output_quantizers
	variables
 trainable_variables
!regularization_losses
"	keras_api
?
	#layer
$optimizer_step
%_weight_vars
&
kernel_min
'
kernel_max
(_quantize_activations
)post_activation_min
*post_activation_max
+_output_quantizers
,	variables
-trainable_variables
.regularization_losses
/	keras_api
?
	0layer
1optimizer_step
2_weight_vars
3
kernel_min
4
kernel_max
5_quantize_activations
6post_activation_min
7post_activation_max
8_output_quantizers
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?
	=layer
>optimizer_step
?_weight_vars
@
kernel_min
A
kernel_max
B_quantize_activations
Cpost_activation_min
Dpost_activation_max
E_output_quantizers
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
?
	Jlayer
Koptimizer_step
L_weight_vars
M_quantize_activations
N_output_quantizers
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
?
	Slayer
Toptimizer_step
U_weight_vars
V
kernel_min
W
kernel_max
X_quantize_activations
Ypre_activation_min
Zpre_activation_max
[_output_quantizers
\	variables
]trainable_variables
^regularization_losses
_	keras_api
?
`iter

abeta_1

bbeta_2
	cdecay
dlearning_rateem?fm?gm?hm?im?jm?km?lm?mm?nm?ev?fv?gv?hv?iv?jv?kv?lv?mv?nv?
?
0
1
2
e3
f4
5
6
7
8
9
g10
h11
$12
&13
'14
)15
*16
i17
j18
119
320
421
622
723
k24
l25
>26
@27
A28
C29
D30
K31
m32
n33
T34
V35
W36
Y37
Z38
F
e0
f1
g2
h3
i4
j5
k6
l7
m8
n9
 
?

olayers
		variables
pnon_trainable_variables
qlayer_metrics
rlayer_regularization_losses
smetrics

trainable_variables
regularization_losses
 
}
VARIABLE_VALUE%quantize_layer_1/quantize_layer_1_minDlayer_with_weights-0/quantize_layer_1_min/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE%quantize_layer_1/quantize_layer_1_maxDlayer_with_weights-0/quantize_layer_1_max/.ATTRIBUTES/VARIABLE_VALUE

min_var
max_var
sq
VARIABLE_VALUEquantize_layer_1/optimizer_step>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 
 
?

tlayers
	variables
unon_trainable_variables
vlayer_metrics
wlayer_regularization_losses
xmetrics
trainable_variables
regularization_losses
h

fkernel
ebias
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
nl
VARIABLE_VALUEquant_dense/optimizer_step>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

}0
fd
VARIABLE_VALUEquant_dense/kernel_min:layer_with_weights-1/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEquant_dense/kernel_max:layer_with_weights-1/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
xv
VARIABLE_VALUEquant_dense/post_activation_minClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEquant_dense/post_activation_maxClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
1
e0
f1
2
3
4
5
6

e0
f1
 
?

~layers
	variables
non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
 trainable_variables
!regularization_losses
l

hkernel
gbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
pn
VARIABLE_VALUEquant_dense_1/optimizer_step>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

?0
hf
VARIABLE_VALUEquant_dense_1/kernel_min:layer_with_weights-2/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEquant_dense_1/kernel_max:layer_with_weights-2/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
zx
VARIABLE_VALUE!quant_dense_1/post_activation_minClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE!quant_dense_1/post_activation_maxClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
1
g0
h1
$2
&3
'4
)5
*6

g0
h1
 
?
?layers
,	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
-trainable_variables
.regularization_losses
l

jkernel
ibias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
pn
VARIABLE_VALUEquant_dense_2/optimizer_step>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

?0
hf
VARIABLE_VALUEquant_dense_2/kernel_min:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEquant_dense_2/kernel_max:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
zx
VARIABLE_VALUE!quant_dense_2/post_activation_minClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE!quant_dense_2/post_activation_maxClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
1
i0
j1
12
33
44
65
76

i0
j1
 
?
?layers
9	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
:trainable_variables
;regularization_losses
l

lkernel
kbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
pn
VARIABLE_VALUEquant_dense_3/optimizer_step>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

?0
hf
VARIABLE_VALUEquant_dense_3/kernel_min:layer_with_weights-4/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEquant_dense_3/kernel_max:layer_with_weights-4/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
zx
VARIABLE_VALUE!quant_dense_3/post_activation_minClayer_with_weights-4/post_activation_min/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE!quant_dense_3/post_activation_maxClayer_with_weights-4/post_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
1
k0
l1
>2
@3
A4
C5
D6

k0
l1
 
?
?layers
F	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
Gtrainable_variables
Hregularization_losses
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
pn
VARIABLE_VALUEquant_dropout/optimizer_step>layer_with_weights-5/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

K0
 
 
?
?layers
O	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
Ptrainable_variables
Qregularization_losses
l

nkernel
mbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
pn
VARIABLE_VALUEquant_dense_4/optimizer_step>layer_with_weights-6/optimizer_step/.ATTRIBUTES/VARIABLE_VALUE

?0
hf
VARIABLE_VALUEquant_dense_4/kernel_min:layer_with_weights-6/kernel_min/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEquant_dense_4/kernel_max:layer_with_weights-6/kernel_max/.ATTRIBUTES/VARIABLE_VALUE
 
xv
VARIABLE_VALUE quant_dense_4/pre_activation_minBlayer_with_weights-6/pre_activation_min/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE quant_dense_4/pre_activation_maxBlayer_with_weights-6/pre_activation_max/.ATTRIBUTES/VARIABLE_VALUE
 
1
m0
n1
T2
V3
W4
Y5
Z6

m0
n1
 
?
?layers
\	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
]trainable_variables
^regularization_losses
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
FD
VARIABLE_VALUE
dense/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_1/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_1/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_2/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_2/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_3/bias'variables/24/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_3/kernel'variables/25/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_4/bias'variables/32/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_4/kernel'variables/33/.ATTRIBUTES/VARIABLE_VALUE
1
0
1
2
3
4
5
6
?
0
1
2
3
4
5
6
7
$8
&9
'10
)11
*12
113
314
415
616
717
>18
@19
A20
C21
D22
K23
T24
V25
W26
Y27
Z28
 
 

?0
?1
 

0
1
2
 
 
 

e0

e0
 
?
?layers
y	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
ztrainable_variables
{regularization_losses

f0
?2

0
#
0
1
2
3
4
 
 
 

g0

g0
 
?
?layers
?	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses

h0
?2

#0
#
$0
&1
'2
)3
*4
 
 
 

i0

i0
 
?
?layers
?	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses

j0
?2

00
#
10
31
42
63
74
 
 
 

k0

k0
 
?
?layers
?	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses

l0
?2

=0
#
>0
@1
A2
C3
D4
 
 
 
 
 
 
?
?layers
?	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses

J0

K0
 
 
 

m0

m0
 
?
?layers
?	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses

n0
?2

S0
#
T0
V1
W2
Y3
Z4
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 

min_var
max_var
 
 
 
 
 

&min_var
'max_var
 
 
 
 
 

3min_var
4max_var
 
 
 
 
 

@min_var
Amax_var
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

Vmin_var
Wmax_var
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
ig
VARIABLE_VALUEAdam/dense/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/dense/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_1/bias/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_1/kernel/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_2/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_2/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_3/bias/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_3/kernel/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_4/bias/mCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_4/kernel/mCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/dense/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/dense/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_1/bias/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_1/kernel/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_2/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_2/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_3/bias/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_3/kernel/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_4/bias/vCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_4/kernel/vCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
serving_default_dense_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?	
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_input%quantize_layer_1/quantize_layer_1_min%quantize_layer_1/quantize_layer_1_maxdense/kernelquant_dense/kernel_minquant_dense/kernel_max
dense/biasquant_dense/post_activation_minquant_dense/post_activation_maxdense_1/kernelquant_dense_1/kernel_minquant_dense_1/kernel_maxdense_1/bias!quant_dense_1/post_activation_min!quant_dense_1/post_activation_maxdense_2/kernelquant_dense_2/kernel_minquant_dense_2/kernel_maxdense_2/bias!quant_dense_2/post_activation_min!quant_dense_2/post_activation_maxdense_3/kernelquant_dense_3/kernel_minquant_dense_3/kernel_maxdense_3/bias!quant_dense_3/post_activation_min!quant_dense_3/post_activation_maxdense_4/kernelquant_dense_4/kernel_minquant_dense_4/kernel_maxdense_4/bias quant_dense_4/pre_activation_min quant_dense_4/pre_activation_max*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_940511
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename9quantize_layer_1/quantize_layer_1_min/Read/ReadVariableOp9quantize_layer_1/quantize_layer_1_max/Read/ReadVariableOp3quantize_layer_1/optimizer_step/Read/ReadVariableOp.quant_dense/optimizer_step/Read/ReadVariableOp*quant_dense/kernel_min/Read/ReadVariableOp*quant_dense/kernel_max/Read/ReadVariableOp3quant_dense/post_activation_min/Read/ReadVariableOp3quant_dense/post_activation_max/Read/ReadVariableOp0quant_dense_1/optimizer_step/Read/ReadVariableOp,quant_dense_1/kernel_min/Read/ReadVariableOp,quant_dense_1/kernel_max/Read/ReadVariableOp5quant_dense_1/post_activation_min/Read/ReadVariableOp5quant_dense_1/post_activation_max/Read/ReadVariableOp0quant_dense_2/optimizer_step/Read/ReadVariableOp,quant_dense_2/kernel_min/Read/ReadVariableOp,quant_dense_2/kernel_max/Read/ReadVariableOp5quant_dense_2/post_activation_min/Read/ReadVariableOp5quant_dense_2/post_activation_max/Read/ReadVariableOp0quant_dense_3/optimizer_step/Read/ReadVariableOp,quant_dense_3/kernel_min/Read/ReadVariableOp,quant_dense_3/kernel_max/Read/ReadVariableOp5quant_dense_3/post_activation_min/Read/ReadVariableOp5quant_dense_3/post_activation_max/Read/ReadVariableOp0quant_dropout/optimizer_step/Read/ReadVariableOp0quant_dense_4/optimizer_step/Read/ReadVariableOp,quant_dense_4/kernel_min/Read/ReadVariableOp,quant_dense_4/kernel_max/Read/ReadVariableOp4quant_dense_4/pre_activation_min/Read/ReadVariableOp4quant_dense_4/pre_activation_max/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOpConst*Q
TinJ
H2F	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_941900
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename%quantize_layer_1/quantize_layer_1_min%quantize_layer_1/quantize_layer_1_maxquantize_layer_1/optimizer_stepquant_dense/optimizer_stepquant_dense/kernel_minquant_dense/kernel_maxquant_dense/post_activation_minquant_dense/post_activation_maxquant_dense_1/optimizer_stepquant_dense_1/kernel_minquant_dense_1/kernel_max!quant_dense_1/post_activation_min!quant_dense_1/post_activation_maxquant_dense_2/optimizer_stepquant_dense_2/kernel_minquant_dense_2/kernel_max!quant_dense_2/post_activation_min!quant_dense_2/post_activation_maxquant_dense_3/optimizer_stepquant_dense_3/kernel_minquant_dense_3/kernel_max!quant_dense_3/post_activation_min!quant_dense_3/post_activation_maxquant_dropout/optimizer_stepquant_dense_4/optimizer_stepquant_dense_4/kernel_minquant_dense_4/kernel_max quant_dense_4/pre_activation_min quant_dense_4/pre_activation_max	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kerneldense_4/biasdense_4/kerneltotalcounttotal_1count_1Adam/dense/bias/mAdam/dense/kernel/mAdam/dense_1/bias/mAdam/dense_1/kernel/mAdam/dense_2/bias/mAdam/dense_2/kernel/mAdam/dense_3/bias/mAdam/dense_3/kernel/mAdam/dense_4/bias/mAdam/dense_4/kernel/mAdam/dense/bias/vAdam/dense/kernel/vAdam/dense_1/bias/vAdam/dense_1/kernel/vAdam/dense_2/bias/vAdam/dense_2/kernel/vAdam/dense_3/bias/vAdam/dense_3/kernel/vAdam/dense_4/bias/vAdam/dense_4/kernel/v*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_942114??
?#
?
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_939355

inputsQ
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	?@J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:@K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	?@*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	?@*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_sequential_layer_call_fn_940580

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: @
	unknown_8: 
	unknown_9: 

unknown_10:@

unknown_11: 

unknown_12: 

unknown_13:	@?

unknown_14: 

unknown_15: 

unknown_16:	?

unknown_17: 

unknown_18: 

unknown_19:	?@

unknown_20: 

unknown_21: 

unknown_22:@

unknown_23: 

unknown_24: 

unknown_25:@

unknown_26: 

unknown_27: 

unknown_28:

unknown_29: 

unknown_30: 
identity??StatefulPartitionedCall?
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
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_9394122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
.__inference_quant_dropout_layer_call_fn_941544

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dropout_layer_call_and_return_conditional_losses_9395912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?1
?
F__inference_sequential_layer_call_and_return_conditional_losses_940148

inputs!
quantize_layer_1_940076: !
quantize_layer_1_940078: $
quant_dense_940081: 
quant_dense_940083: 
quant_dense_940085:  
quant_dense_940087: 
quant_dense_940089: 
quant_dense_940091: &
quant_dense_1_940094: @
quant_dense_1_940096: 
quant_dense_1_940098: "
quant_dense_1_940100:@
quant_dense_1_940102: 
quant_dense_1_940104: '
quant_dense_2_940107:	@?
quant_dense_2_940109: 
quant_dense_2_940111: #
quant_dense_2_940113:	?
quant_dense_2_940115: 
quant_dense_2_940117: '
quant_dense_3_940120:	?@
quant_dense_3_940122: 
quant_dense_3_940124: "
quant_dense_3_940126:@
quant_dense_3_940128: 
quant_dense_3_940130: &
quant_dense_4_940134:@
quant_dense_4_940136: 
quant_dense_4_940138: "
quant_dense_4_940140:
quant_dense_4_940142: 
quant_dense_4_940144: 
identity??#quant_dense/StatefulPartitionedCall?%quant_dense_1/StatefulPartitionedCall?%quant_dense_2/StatefulPartitionedCall?%quant_dense_3/StatefulPartitionedCall?%quant_dense_4/StatefulPartitionedCall?%quant_dropout/StatefulPartitionedCall?(quantize_layer_1/StatefulPartitionedCall?
(quantize_layer_1/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_1_940076quantize_layer_1_940078*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_9399952*
(quantize_layer_1/StatefulPartitionedCall?
#quant_dense/StatefulPartitionedCallStatefulPartitionedCall1quantize_layer_1/StatefulPartitionedCall:output:0quant_dense_940081quant_dense_940083quant_dense_940085quant_dense_940087quant_dense_940089quant_dense_940091*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_quant_dense_layer_call_and_return_conditional_losses_9399472%
#quant_dense/StatefulPartitionedCall?
%quant_dense_1/StatefulPartitionedCallStatefulPartitionedCall,quant_dense/StatefulPartitionedCall:output:0quant_dense_1_940094quant_dense_1_940096quant_dense_1_940098quant_dense_1_940100quant_dense_1_940102quant_dense_1_940104*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_9398552'
%quant_dense_1/StatefulPartitionedCall?
%quant_dense_2/StatefulPartitionedCallStatefulPartitionedCall.quant_dense_1/StatefulPartitionedCall:output:0quant_dense_2_940107quant_dense_2_940109quant_dense_2_940111quant_dense_2_940113quant_dense_2_940115quant_dense_2_940117*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_9397632'
%quant_dense_2/StatefulPartitionedCall?
%quant_dense_3/StatefulPartitionedCallStatefulPartitionedCall.quant_dense_2/StatefulPartitionedCall:output:0quant_dense_3_940120quant_dense_3_940122quant_dense_3_940124quant_dense_3_940126quant_dense_3_940128quant_dense_3_940130*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_9396712'
%quant_dense_3/StatefulPartitionedCall?
%quant_dropout/StatefulPartitionedCallStatefulPartitionedCall.quant_dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dropout_layer_call_and_return_conditional_losses_9395912'
%quant_dropout/StatefulPartitionedCall?
%quant_dense_4/StatefulPartitionedCallStatefulPartitionedCall.quant_dropout/StatefulPartitionedCall:output:0quant_dense_4_940134quant_dense_4_940136quant_dense_4_940138quant_dense_4_940140quant_dense_4_940142quant_dense_4_940144*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_9395562'
%quant_dense_4/StatefulPartitionedCall?
IdentityIdentity.quant_dense_4/StatefulPartitionedCall:output:0$^quant_dense/StatefulPartitionedCall&^quant_dense_1/StatefulPartitionedCall&^quant_dense_2/StatefulPartitionedCall&^quant_dense_3/StatefulPartitionedCall&^quant_dense_4/StatefulPartitionedCall&^quant_dropout/StatefulPartitionedCall)^quantize_layer_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#quant_dense/StatefulPartitionedCall#quant_dense/StatefulPartitionedCall2N
%quant_dense_1/StatefulPartitionedCall%quant_dense_1/StatefulPartitionedCall2N
%quant_dense_2/StatefulPartitionedCall%quant_dense_2/StatefulPartitionedCall2N
%quant_dense_3/StatefulPartitionedCall%quant_dense_3/StatefulPartitionedCall2N
%quant_dense_4/StatefulPartitionedCall%quant_dense_4/StatefulPartitionedCall2N
%quant_dropout/StatefulPartitionedCall%quant_dropout/StatefulPartitionedCall2T
(quantize_layer_1/StatefulPartitionedCall(quantize_layer_1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_quant_dense_layer_call_fn_941120

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_quant_dense_layer_call_and_return_conditional_losses_9399472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?b
?
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_939855

inputs=
+lastvaluequant_rank_readvariableop_resource: @/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:@@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: @*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?b
?
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_941534

inputs>
+lastvaluequant_rank_readvariableop_resource:	?@/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:@@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	?@*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_939320

inputsQ
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	@?J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: .
biasadd_readvariableop_resource:	?K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	@?*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	@?*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*(
_output_shapes
:??????????2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?#
?
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_939397

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:@J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:@*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:@*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
SoftmaxSoftmax3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?0
?
F__inference_sequential_layer_call_and_return_conditional_losses_939412

inputs!
quantize_layer_1_939224: !
quantize_layer_1_939226: $
quant_dense_939251: 
quant_dense_939253: 
quant_dense_939255:  
quant_dense_939257: 
quant_dense_939259: 
quant_dense_939261: &
quant_dense_1_939286: @
quant_dense_1_939288: 
quant_dense_1_939290: "
quant_dense_1_939292:@
quant_dense_1_939294: 
quant_dense_1_939296: '
quant_dense_2_939321:	@?
quant_dense_2_939323: 
quant_dense_2_939325: #
quant_dense_2_939327:	?
quant_dense_2_939329: 
quant_dense_2_939331: '
quant_dense_3_939356:	?@
quant_dense_3_939358: 
quant_dense_3_939360: "
quant_dense_3_939362:@
quant_dense_3_939364: 
quant_dense_3_939366: &
quant_dense_4_939398:@
quant_dense_4_939400: 
quant_dense_4_939402: "
quant_dense_4_939404:
quant_dense_4_939406: 
quant_dense_4_939408: 
identity??#quant_dense/StatefulPartitionedCall?%quant_dense_1/StatefulPartitionedCall?%quant_dense_2/StatefulPartitionedCall?%quant_dense_3/StatefulPartitionedCall?%quant_dense_4/StatefulPartitionedCall?(quantize_layer_1/StatefulPartitionedCall?
(quantize_layer_1/StatefulPartitionedCallStatefulPartitionedCallinputsquantize_layer_1_939224quantize_layer_1_939226*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_9392232*
(quantize_layer_1/StatefulPartitionedCall?
#quant_dense/StatefulPartitionedCallStatefulPartitionedCall1quantize_layer_1/StatefulPartitionedCall:output:0quant_dense_939251quant_dense_939253quant_dense_939255quant_dense_939257quant_dense_939259quant_dense_939261*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_quant_dense_layer_call_and_return_conditional_losses_9392502%
#quant_dense/StatefulPartitionedCall?
%quant_dense_1/StatefulPartitionedCallStatefulPartitionedCall,quant_dense/StatefulPartitionedCall:output:0quant_dense_1_939286quant_dense_1_939288quant_dense_1_939290quant_dense_1_939292quant_dense_1_939294quant_dense_1_939296*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_9392852'
%quant_dense_1/StatefulPartitionedCall?
%quant_dense_2/StatefulPartitionedCallStatefulPartitionedCall.quant_dense_1/StatefulPartitionedCall:output:0quant_dense_2_939321quant_dense_2_939323quant_dense_2_939325quant_dense_2_939327quant_dense_2_939329quant_dense_2_939331*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_9393202'
%quant_dense_2/StatefulPartitionedCall?
%quant_dense_3/StatefulPartitionedCallStatefulPartitionedCall.quant_dense_2/StatefulPartitionedCall:output:0quant_dense_3_939356quant_dense_3_939358quant_dense_3_939360quant_dense_3_939362quant_dense_3_939364quant_dense_3_939366*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_9393552'
%quant_dense_3/StatefulPartitionedCall?
quant_dropout/PartitionedCallPartitionedCall.quant_dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dropout_layer_call_and_return_conditional_losses_9393742
quant_dropout/PartitionedCall?
%quant_dense_4/StatefulPartitionedCallStatefulPartitionedCall&quant_dropout/PartitionedCall:output:0quant_dense_4_939398quant_dense_4_939400quant_dense_4_939402quant_dense_4_939404quant_dense_4_939406quant_dense_4_939408*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_9393972'
%quant_dense_4/StatefulPartitionedCall?
IdentityIdentity.quant_dense_4/StatefulPartitionedCall:output:0$^quant_dense/StatefulPartitionedCall&^quant_dense_1/StatefulPartitionedCall&^quant_dense_2/StatefulPartitionedCall&^quant_dense_3/StatefulPartitionedCall&^quant_dense_4/StatefulPartitionedCall)^quantize_layer_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#quant_dense/StatefulPartitionedCall#quant_dense/StatefulPartitionedCall2N
%quant_dense_1/StatefulPartitionedCall%quant_dense_1/StatefulPartitionedCall2N
%quant_dense_2/StatefulPartitionedCall%quant_dense_2/StatefulPartitionedCall2N
%quant_dense_3/StatefulPartitionedCall%quant_dense_3/StatefulPartitionedCall2N
%quant_dense_4/StatefulPartitionedCall%quant_dense_4/StatefulPartitionedCall2T
(quantize_layer_1/StatefulPartitionedCall(quantize_layer_1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
1__inference_quantize_layer_1_layer_call_fn_941056

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_9399952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_941253

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource: @J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:@K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

: @*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: @*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?b
?
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_939556

inputs=
+lastvaluequant_rank_readvariableop_resource:@/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:@*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinBiasAdd:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxBiasAdd:output:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
SoftmaxSoftmax3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_sequential_layer_call_fn_939479
dense_input
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: @
	unknown_8: 
	unknown_9: 

unknown_10:@

unknown_11: 

unknown_12: 

unknown_13:	@?

unknown_14: 

unknown_15: 

unknown_16:	?

unknown_17: 

unknown_18: 

unknown_19:	?@

unknown_20: 

unknown_21: 

unknown_22:@

unknown_23: 

unknown_24: 

unknown_25:@

unknown_26: 

unknown_27: 

unknown_28:

unknown_29: 

unknown_30: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_9394122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_namedense_input
?#
?
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_939285

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource: @J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:@K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

: @*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: @*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?b
?
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_941422

inputs>
+lastvaluequant_rank_readvariableop_resource:	@?/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: .
biasadd_readvariableop_resource:	?@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	@?*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*(
_output_shapes
:??????????2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?b
?
G__inference_quant_dense_layer_call_and_return_conditional_losses_941198

inputs=
+lastvaluequant_rank_readvariableop_resource: /
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:????????? 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_sequential_layer_call_fn_940284
dense_input
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: @
	unknown_8: 
	unknown_9: 

unknown_10:@

unknown_11: 

unknown_12: 

unknown_13:	@?

unknown_14: 

unknown_15: 

unknown_16:	?

unknown_17: 

unknown_18: 

unknown_19:	?@

unknown_20: 

unknown_21: 

unknown_22:@

unknown_23: 

unknown_24: 

unknown_25:@

unknown_26: 

unknown_27: 

unknown_28:

unknown_29: 

unknown_30: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_9401482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_namedense_input
?
?
1__inference_quantize_layer_1_layer_call_fn_941047

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_9392232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?1
?
F__inference_sequential_layer_call_and_return_conditional_losses_940434
dense_input!
quantize_layer_1_940362: !
quantize_layer_1_940364: $
quant_dense_940367: 
quant_dense_940369: 
quant_dense_940371:  
quant_dense_940373: 
quant_dense_940375: 
quant_dense_940377: &
quant_dense_1_940380: @
quant_dense_1_940382: 
quant_dense_1_940384: "
quant_dense_1_940386:@
quant_dense_1_940388: 
quant_dense_1_940390: '
quant_dense_2_940393:	@?
quant_dense_2_940395: 
quant_dense_2_940397: #
quant_dense_2_940399:	?
quant_dense_2_940401: 
quant_dense_2_940403: '
quant_dense_3_940406:	?@
quant_dense_3_940408: 
quant_dense_3_940410: "
quant_dense_3_940412:@
quant_dense_3_940414: 
quant_dense_3_940416: &
quant_dense_4_940420:@
quant_dense_4_940422: 
quant_dense_4_940424: "
quant_dense_4_940426:
quant_dense_4_940428: 
quant_dense_4_940430: 
identity??#quant_dense/StatefulPartitionedCall?%quant_dense_1/StatefulPartitionedCall?%quant_dense_2/StatefulPartitionedCall?%quant_dense_3/StatefulPartitionedCall?%quant_dense_4/StatefulPartitionedCall?%quant_dropout/StatefulPartitionedCall?(quantize_layer_1/StatefulPartitionedCall?
(quantize_layer_1/StatefulPartitionedCallStatefulPartitionedCalldense_inputquantize_layer_1_940362quantize_layer_1_940364*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_9399952*
(quantize_layer_1/StatefulPartitionedCall?
#quant_dense/StatefulPartitionedCallStatefulPartitionedCall1quantize_layer_1/StatefulPartitionedCall:output:0quant_dense_940367quant_dense_940369quant_dense_940371quant_dense_940373quant_dense_940375quant_dense_940377*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_quant_dense_layer_call_and_return_conditional_losses_9399472%
#quant_dense/StatefulPartitionedCall?
%quant_dense_1/StatefulPartitionedCallStatefulPartitionedCall,quant_dense/StatefulPartitionedCall:output:0quant_dense_1_940380quant_dense_1_940382quant_dense_1_940384quant_dense_1_940386quant_dense_1_940388quant_dense_1_940390*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_9398552'
%quant_dense_1/StatefulPartitionedCall?
%quant_dense_2/StatefulPartitionedCallStatefulPartitionedCall.quant_dense_1/StatefulPartitionedCall:output:0quant_dense_2_940393quant_dense_2_940395quant_dense_2_940397quant_dense_2_940399quant_dense_2_940401quant_dense_2_940403*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_9397632'
%quant_dense_2/StatefulPartitionedCall?
%quant_dense_3/StatefulPartitionedCallStatefulPartitionedCall.quant_dense_2/StatefulPartitionedCall:output:0quant_dense_3_940406quant_dense_3_940408quant_dense_3_940410quant_dense_3_940412quant_dense_3_940414quant_dense_3_940416*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_9396712'
%quant_dense_3/StatefulPartitionedCall?
%quant_dropout/StatefulPartitionedCallStatefulPartitionedCall.quant_dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dropout_layer_call_and_return_conditional_losses_9395912'
%quant_dropout/StatefulPartitionedCall?
%quant_dense_4/StatefulPartitionedCallStatefulPartitionedCall.quant_dropout/StatefulPartitionedCall:output:0quant_dense_4_940420quant_dense_4_940422quant_dense_4_940424quant_dense_4_940426quant_dense_4_940428quant_dense_4_940430*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_9395562'
%quant_dense_4/StatefulPartitionedCall?
IdentityIdentity.quant_dense_4/StatefulPartitionedCall:output:0$^quant_dense/StatefulPartitionedCall&^quant_dense_1/StatefulPartitionedCall&^quant_dense_2/StatefulPartitionedCall&^quant_dense_3/StatefulPartitionedCall&^quant_dense_4/StatefulPartitionedCall&^quant_dropout/StatefulPartitionedCall)^quantize_layer_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#quant_dense/StatefulPartitionedCall#quant_dense/StatefulPartitionedCall2N
%quant_dense_1/StatefulPartitionedCall%quant_dense_1/StatefulPartitionedCall2N
%quant_dense_2/StatefulPartitionedCall%quant_dense_2/StatefulPartitionedCall2N
%quant_dense_3/StatefulPartitionedCall%quant_dense_3/StatefulPartitionedCall2N
%quant_dense_4/StatefulPartitionedCall%quant_dense_4/StatefulPartitionedCall2N
%quant_dropout/StatefulPartitionedCall%quant_dropout/StatefulPartitionedCall2T
(quantize_layer_1/StatefulPartitionedCall(quantize_layer_1/StatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_namedense_input
?b
?
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_941673

inputs=
+lastvaluequant_rank_readvariableop_resource:@/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:@*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinBiasAdd:output:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxBiasAdd:output:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
SoftmaxSoftmax3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?#
?
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_941365

inputsQ
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	@?J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: .
biasadd_readvariableop_resource:	?K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	@?*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	@?*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*(
_output_shapes
:??????????2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_quant_dense_4_layer_call_fn_941578

inputs
unknown:@
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_9393972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?#
?
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_941477

inputsQ
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	?@J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:@K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	?@*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	?@*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_quant_dense_3_layer_call_fn_941456

inputs
unknown:	?@
	unknown_0: 
	unknown_1: 
	unknown_2:@
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_9396712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_quant_dense_layer_call_fn_941103

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_quant_dense_layer_call_and_return_conditional_losses_9392502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_quant_dense_1_layer_call_fn_941232

inputs
unknown: @
	unknown_0: 
	unknown_1: 
	unknown_2:@
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_9398552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?b
?
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_939671

inputs>
+lastvaluequant_rank_readvariableop_resource:	?@/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:@@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	?@*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
G__inference_quant_dense_layer_call_and_return_conditional_losses_941141

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

: *
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:????????? 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?,
!__inference__wrapped_model_939207
dense_inputg
]sequential_quantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: i
_sequential_quantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: g
Usequential_quant_dense_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource: a
Wsequential_quant_dense_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: a
Wsequential_quant_dense_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: D
6sequential_quant_dense_biasadd_readvariableop_resource: b
Xsequential_quant_dense_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: d
Zsequential_quant_dense_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: i
Wsequential_quant_dense_1_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource: @c
Ysequential_quant_dense_1_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: c
Ysequential_quant_dense_1_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: F
8sequential_quant_dense_1_biasadd_readvariableop_resource:@d
Zsequential_quant_dense_1_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: f
\sequential_quant_dense_1_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: j
Wsequential_quant_dense_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	@?c
Ysequential_quant_dense_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: c
Ysequential_quant_dense_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: G
8sequential_quant_dense_2_biasadd_readvariableop_resource:	?d
Zsequential_quant_dense_2_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: f
\sequential_quant_dense_2_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: j
Wsequential_quant_dense_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	?@c
Ysequential_quant_dense_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: c
Ysequential_quant_dense_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: F
8sequential_quant_dense_3_biasadd_readvariableop_resource:@d
Zsequential_quant_dense_3_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: f
\sequential_quant_dense_3_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: i
Wsequential_quant_dense_4_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:@c
Ysequential_quant_dense_4_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: c
Ysequential_quant_dense_4_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: F
8sequential_quant_dense_4_biasadd_readvariableop_resource:d
Zsequential_quant_dense_4_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: f
\sequential_quant_dense_4_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??-sequential/quant_dense/BiasAdd/ReadVariableOp?Lsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Nsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Nsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Osequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Qsequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?/sequential/quant_dense_1/BiasAdd/ReadVariableOp?Nsequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Psequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Psequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Qsequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Ssequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?/sequential/quant_dense_2/BiasAdd/ReadVariableOp?Nsequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Psequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Psequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Qsequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Ssequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?/sequential/quant_dense_3/BiasAdd/ReadVariableOp?Nsequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Psequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Psequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Qsequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Ssequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?/sequential/quant_dense_4/BiasAdd/ReadVariableOp?Nsequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Psequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Psequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Qsequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Ssequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?Tsequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Vsequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Tsequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp]sequential_quantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02V
Tsequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Vsequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp_sequential_quantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02X
Vsequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Esequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsdense_input\sequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0^sequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????2G
Esequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars?
Lsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpUsequential_quant_dense_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

: *
dtype02N
Lsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Nsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpWsequential_quant_dense_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02P
Nsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Nsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpWsequential_quant_dense_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02P
Nsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
=sequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsTsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Vsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Vsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: *
narrow_range(2?
=sequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars?
sequential/quant_dense/MatMulMatMulOsequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0Gsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:????????? 2
sequential/quant_dense/MatMul?
-sequential/quant_dense/BiasAdd/ReadVariableOpReadVariableOp6sequential_quant_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential/quant_dense/BiasAdd/ReadVariableOp?
sequential/quant_dense/BiasAddBiasAdd'sequential/quant_dense/MatMul:product:05sequential/quant_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential/quant_dense/BiasAdd?
sequential/quant_dense/ReluRelu'sequential/quant_dense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential/quant_dense/Relu?
Osequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpXsequential_quant_dense_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02Q
Osequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Qsequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpZsequential_quant_dense_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02S
Qsequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
@sequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars)sequential/quant_dense/Relu:activations:0Wsequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Ysequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:????????? 2B
@sequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars?
Nsequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpWsequential_quant_dense_1_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

: @*
dtype02P
Nsequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Psequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpYsequential_quant_dense_1_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02R
Psequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Psequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpYsequential_quant_dense_1_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02R
Psequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
?sequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsVsequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Xsequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Xsequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: @*
narrow_range(2A
?sequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars?
sequential/quant_dense_1/MatMulMatMulJsequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0Isequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2!
sequential/quant_dense_1/MatMul?
/sequential/quant_dense_1/BiasAdd/ReadVariableOpReadVariableOp8sequential_quant_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential/quant_dense_1/BiasAdd/ReadVariableOp?
 sequential/quant_dense_1/BiasAddBiasAdd)sequential/quant_dense_1/MatMul:product:07sequential/quant_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 sequential/quant_dense_1/BiasAdd?
sequential/quant_dense_1/ReluRelu)sequential/quant_dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential/quant_dense_1/Relu?
Qsequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpZsequential_quant_dense_1_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02S
Qsequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Ssequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp\sequential_quant_dense_1_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02U
Ssequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Bsequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars+sequential/quant_dense_1/Relu:activations:0Ysequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0[sequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@2D
Bsequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars?
Nsequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpWsequential_quant_dense_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	@?*
dtype02P
Nsequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Psequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpYsequential_quant_dense_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02R
Psequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Psequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpYsequential_quant_dense_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02R
Psequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
?sequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsVsequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Xsequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Xsequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	@?*
narrow_range(2A
?sequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars?
sequential/quant_dense_2/MatMulMatMulLsequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0Isequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*(
_output_shapes
:??????????2!
sequential/quant_dense_2/MatMul?
/sequential/quant_dense_2/BiasAdd/ReadVariableOpReadVariableOp8sequential_quant_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/sequential/quant_dense_2/BiasAdd/ReadVariableOp?
 sequential/quant_dense_2/BiasAddBiasAdd)sequential/quant_dense_2/MatMul:product:07sequential/quant_dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 sequential/quant_dense_2/BiasAdd?
sequential/quant_dense_2/ReluRelu)sequential/quant_dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential/quant_dense_2/Relu?
Qsequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpZsequential_quant_dense_2_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02S
Qsequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Ssequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp\sequential_quant_dense_2_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02U
Ssequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Bsequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars+sequential/quant_dense_2/Relu:activations:0Ysequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0[sequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*(
_output_shapes
:??????????2D
Bsequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars?
Nsequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpWsequential_quant_dense_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	?@*
dtype02P
Nsequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Psequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpYsequential_quant_dense_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02R
Psequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Psequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpYsequential_quant_dense_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02R
Psequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
?sequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsVsequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Xsequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Xsequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	?@*
narrow_range(2A
?sequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars?
sequential/quant_dense_3/MatMulMatMulLsequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0Isequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2!
sequential/quant_dense_3/MatMul?
/sequential/quant_dense_3/BiasAdd/ReadVariableOpReadVariableOp8sequential_quant_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential/quant_dense_3/BiasAdd/ReadVariableOp?
 sequential/quant_dense_3/BiasAddBiasAdd)sequential/quant_dense_3/MatMul:product:07sequential/quant_dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2"
 sequential/quant_dense_3/BiasAdd?
sequential/quant_dense_3/ReluRelu)sequential/quant_dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential/quant_dense_3/Relu?
Qsequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpZsequential_quant_dense_3_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02S
Qsequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Ssequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp\sequential_quant_dense_3_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02U
Ssequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Bsequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars+sequential/quant_dense_3/Relu:activations:0Ysequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0[sequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@2D
Bsequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars?
!sequential/quant_dropout/IdentityIdentityLsequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2#
!sequential/quant_dropout/Identity?
Nsequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpWsequential_quant_dense_4_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:@*
dtype02P
Nsequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Psequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpYsequential_quant_dense_4_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02R
Psequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Psequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpYsequential_quant_dense_4_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02R
Psequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
?sequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsVsequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Xsequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Xsequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:@*
narrow_range(2A
?sequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars?
sequential/quant_dense_4/MatMulMatMul*sequential/quant_dropout/Identity:output:0Isequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2!
sequential/quant_dense_4/MatMul?
/sequential/quant_dense_4/BiasAdd/ReadVariableOpReadVariableOp8sequential_quant_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential/quant_dense_4/BiasAdd/ReadVariableOp?
 sequential/quant_dense_4/BiasAddBiasAdd)sequential/quant_dense_4/MatMul:product:07sequential/quant_dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential/quant_dense_4/BiasAdd?
Qsequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpZsequential_quant_dense_4_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02S
Qsequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Ssequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp\sequential_quant_dense_4_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02U
Ssequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Bsequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars)sequential/quant_dense_4/BiasAdd:output:0Ysequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0[sequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????2D
Bsequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars?
 sequential/quant_dense_4/SoftmaxSoftmaxLsequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2"
 sequential/quant_dense_4/Softmax?
IdentityIdentity*sequential/quant_dense_4/Softmax:softmax:0.^sequential/quant_dense/BiasAdd/ReadVariableOpM^sequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpO^sequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1O^sequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2P^sequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpR^sequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_10^sequential/quant_dense_1/BiasAdd/ReadVariableOpO^sequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpQ^sequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Q^sequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2R^sequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpT^sequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_10^sequential/quant_dense_2/BiasAdd/ReadVariableOpO^sequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpQ^sequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Q^sequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2R^sequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpT^sequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_10^sequential/quant_dense_3/BiasAdd/ReadVariableOpO^sequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpQ^sequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Q^sequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2R^sequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpT^sequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_10^sequential/quant_dense_4/BiasAdd/ReadVariableOpO^sequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpQ^sequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Q^sequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2R^sequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpT^sequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1U^sequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpW^sequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-sequential/quant_dense/BiasAdd/ReadVariableOp-sequential/quant_dense/BiasAdd/ReadVariableOp2?
Lsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpLsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Nsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Nsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Nsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Nsequential/quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Osequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpOsequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Qsequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Qsequential/quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12b
/sequential/quant_dense_1/BiasAdd/ReadVariableOp/sequential/quant_dense_1/BiasAdd/ReadVariableOp2?
Nsequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpNsequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Psequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Psequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Psequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Psequential/quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Qsequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpQsequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Ssequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ssequential/quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12b
/sequential/quant_dense_2/BiasAdd/ReadVariableOp/sequential/quant_dense_2/BiasAdd/ReadVariableOp2?
Nsequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpNsequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Psequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Psequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Psequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Psequential/quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Qsequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpQsequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Ssequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ssequential/quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12b
/sequential/quant_dense_3/BiasAdd/ReadVariableOp/sequential/quant_dense_3/BiasAdd/ReadVariableOp2?
Nsequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpNsequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Psequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Psequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Psequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Psequential/quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Qsequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpQsequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Ssequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ssequential/quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12b
/sequential/quant_dense_4/BiasAdd/ReadVariableOp/sequential/quant_dense_4/BiasAdd/ReadVariableOp2?
Nsequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpNsequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Psequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Psequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Psequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Psequential/quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Qsequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpQsequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Ssequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Ssequential/quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Tsequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpTsequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Vsequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Vsequential/quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:T P
'
_output_shapes
:?????????
%
_user_specified_namedense_input
?
h
I__inference_quant_dropout_layer_call_and_return_conditional_losses_939591

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?#
?
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_941616

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:@J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource:K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:@*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:@*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsBiasAdd:output:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
SoftmaxSoftmax3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
I__inference_quant_dropout_layer_call_and_return_conditional_losses_941561

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_940511
dense_input
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: @
	unknown_8: 
	unknown_9: 

unknown_10:@

unknown_11: 

unknown_12: 

unknown_13:	@?

unknown_14: 

unknown_15: 

unknown_16:	?

unknown_17: 

unknown_18: 

unknown_19:	?@

unknown_20: 

unknown_21: 

unknown_22:@

unknown_23: 

unknown_24: 

unknown_25:@

unknown_26: 

unknown_27: 

unknown_28:

unknown_29: 

unknown_30: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_9392072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_namedense_input
?
?
+__inference_sequential_layer_call_fn_940649

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: @
	unknown_8: 
	unknown_9: 

unknown_10:@

unknown_11: 

unknown_12: 

unknown_13:	@?

unknown_14: 

unknown_15: 

unknown_16:	?

unknown_17: 

unknown_18: 

unknown_19:	?@

unknown_20: 

unknown_21: 

unknown_22:@

unknown_23: 

unknown_24: 

unknown_25:@

unknown_26: 

unknown_27: 

unknown_28:

unknown_29: 

unknown_30: 
identity??StatefulPartitionedCall?
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
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_9401482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
G__inference_quant_dense_layer_call_and_return_conditional_losses_939250

inputsP
>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: J
@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: -
biasadd_readvariableop_resource: K
Amovingavgquantize_fakequantwithminmaxvars_readvariableop_resource: M
Cmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??BiasAdd/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp>lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

: *
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp@lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAmovingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCmovingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:????????? 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_29^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_quant_dense_4_layer_call_fn_941595

inputs
unknown:@
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_9395562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?6
F__inference_sequential_layer_call_and_return_conditional_losses_941038

inputsL
Bquantize_layer_1_allvaluesquantize_minimum_readvariableop_resource: L
Bquantize_layer_1_allvaluesquantize_maximum_readvariableop_resource: I
7quant_dense_lastvaluequant_rank_readvariableop_resource: ;
1quant_dense_lastvaluequant_assignminlast_resource: ;
1quant_dense_lastvaluequant_assignmaxlast_resource: 9
+quant_dense_biasadd_readvariableop_resource: L
Bquant_dense_movingavgquantize_assignminema_readvariableop_resource: L
Bquant_dense_movingavgquantize_assignmaxema_readvariableop_resource: K
9quant_dense_1_lastvaluequant_rank_readvariableop_resource: @=
3quant_dense_1_lastvaluequant_assignminlast_resource: =
3quant_dense_1_lastvaluequant_assignmaxlast_resource: ;
-quant_dense_1_biasadd_readvariableop_resource:@N
Dquant_dense_1_movingavgquantize_assignminema_readvariableop_resource: N
Dquant_dense_1_movingavgquantize_assignmaxema_readvariableop_resource: L
9quant_dense_2_lastvaluequant_rank_readvariableop_resource:	@?=
3quant_dense_2_lastvaluequant_assignminlast_resource: =
3quant_dense_2_lastvaluequant_assignmaxlast_resource: <
-quant_dense_2_biasadd_readvariableop_resource:	?N
Dquant_dense_2_movingavgquantize_assignminema_readvariableop_resource: N
Dquant_dense_2_movingavgquantize_assignmaxema_readvariableop_resource: L
9quant_dense_3_lastvaluequant_rank_readvariableop_resource:	?@=
3quant_dense_3_lastvaluequant_assignminlast_resource: =
3quant_dense_3_lastvaluequant_assignmaxlast_resource: ;
-quant_dense_3_biasadd_readvariableop_resource:@N
Dquant_dense_3_movingavgquantize_assignminema_readvariableop_resource: N
Dquant_dense_3_movingavgquantize_assignmaxema_readvariableop_resource: K
9quant_dense_4_lastvaluequant_rank_readvariableop_resource:@=
3quant_dense_4_lastvaluequant_assignminlast_resource: =
3quant_dense_4_lastvaluequant_assignmaxlast_resource: ;
-quant_dense_4_biasadd_readvariableop_resource:N
Dquant_dense_4_movingavgquantize_assignminema_readvariableop_resource: N
Dquant_dense_4_movingavgquantize_assignmaxema_readvariableop_resource: 
identity??"quant_dense/BiasAdd/ReadVariableOp?(quant_dense/LastValueQuant/AssignMaxLast?(quant_dense/LastValueQuant/AssignMinLast?2quant_dense/LastValueQuant/BatchMax/ReadVariableOp?2quant_dense/LastValueQuant/BatchMin/ReadVariableOp?Aquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?>quant_dense/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?9quant_dense/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?>quant_dense/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?9quant_dense/MovingAvgQuantize/AssignMinEma/ReadVariableOp?Dquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Fquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?$quant_dense_1/BiasAdd/ReadVariableOp?*quant_dense_1/LastValueQuant/AssignMaxLast?*quant_dense_1/LastValueQuant/AssignMinLast?4quant_dense_1/LastValueQuant/BatchMax/ReadVariableOp?4quant_dense_1/LastValueQuant/BatchMin/ReadVariableOp?Cquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?@quant_dense_1/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?;quant_dense_1/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?@quant_dense_1/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?;quant_dense_1/MovingAvgQuantize/AssignMinEma/ReadVariableOp?Fquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Hquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?$quant_dense_2/BiasAdd/ReadVariableOp?*quant_dense_2/LastValueQuant/AssignMaxLast?*quant_dense_2/LastValueQuant/AssignMinLast?4quant_dense_2/LastValueQuant/BatchMax/ReadVariableOp?4quant_dense_2/LastValueQuant/BatchMin/ReadVariableOp?Cquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?@quant_dense_2/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?;quant_dense_2/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?@quant_dense_2/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?;quant_dense_2/MovingAvgQuantize/AssignMinEma/ReadVariableOp?Fquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Hquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?$quant_dense_3/BiasAdd/ReadVariableOp?*quant_dense_3/LastValueQuant/AssignMaxLast?*quant_dense_3/LastValueQuant/AssignMinLast?4quant_dense_3/LastValueQuant/BatchMax/ReadVariableOp?4quant_dense_3/LastValueQuant/BatchMin/ReadVariableOp?Cquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?@quant_dense_3/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?;quant_dense_3/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?@quant_dense_3/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?;quant_dense_3/MovingAvgQuantize/AssignMinEma/ReadVariableOp?Fquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Hquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?$quant_dense_4/BiasAdd/ReadVariableOp?*quant_dense_4/LastValueQuant/AssignMaxLast?*quant_dense_4/LastValueQuant/AssignMinLast?4quant_dense_4/LastValueQuant/BatchMax/ReadVariableOp?4quant_dense_4/LastValueQuant/BatchMin/ReadVariableOp?Cquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?@quant_dense_4/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?;quant_dense_4/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?@quant_dense_4/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?;quant_dense_4/MovingAvgQuantize/AssignMinEma/ReadVariableOp?Fquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Hquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?4quantize_layer_1/AllValuesQuantize/AssignMaxAllValue?4quantize_layer_1/AllValuesQuantize/AssignMinAllValue?Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?9quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp?9quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp?
(quantize_layer_1/AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2*
(quantize_layer_1/AllValuesQuantize/Const?
+quantize_layer_1/AllValuesQuantize/BatchMinMininputs1quantize_layer_1/AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: 2-
+quantize_layer_1/AllValuesQuantize/BatchMin?
*quantize_layer_1/AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2,
*quantize_layer_1/AllValuesQuantize/Const_1?
+quantize_layer_1/AllValuesQuantize/BatchMaxMaxinputs3quantize_layer_1/AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 2-
+quantize_layer_1/AllValuesQuantize/BatchMax?
9quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOpReadVariableOpBquantize_layer_1_allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype02;
9quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp?
*quantize_layer_1/AllValuesQuantize/MinimumMinimumAquantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp:value:04quantize_layer_1/AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: 2,
*quantize_layer_1/AllValuesQuantize/Minimum?
.quantize_layer_1/AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.quantize_layer_1/AllValuesQuantize/Minimum_1/y?
,quantize_layer_1/AllValuesQuantize/Minimum_1Minimum.quantize_layer_1/AllValuesQuantize/Minimum:z:07quantize_layer_1/AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 2.
,quantize_layer_1/AllValuesQuantize/Minimum_1?
9quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOpReadVariableOpBquantize_layer_1_allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype02;
9quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp?
*quantize_layer_1/AllValuesQuantize/MaximumMaximumAquantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp:value:04quantize_layer_1/AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: 2,
*quantize_layer_1/AllValuesQuantize/Maximum?
.quantize_layer_1/AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.quantize_layer_1/AllValuesQuantize/Maximum_1/y?
,quantize_layer_1/AllValuesQuantize/Maximum_1Maximum.quantize_layer_1/AllValuesQuantize/Maximum:z:07quantize_layer_1/AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: 2.
,quantize_layer_1/AllValuesQuantize/Maximum_1?
4quantize_layer_1/AllValuesQuantize/AssignMinAllValueAssignVariableOpBquantize_layer_1_allvaluesquantize_minimum_readvariableop_resource0quantize_layer_1/AllValuesQuantize/Minimum_1:z:0:^quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype026
4quantize_layer_1/AllValuesQuantize/AssignMinAllValue?
4quantize_layer_1/AllValuesQuantize/AssignMaxAllValueAssignVariableOpBquantize_layer_1_allvaluesquantize_maximum_readvariableop_resource0quantize_layer_1/AllValuesQuantize/Maximum_1:z:0:^quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype026
4quantize_layer_1/AllValuesQuantize/AssignMaxAllValue?
Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpBquantize_layer_1_allvaluesquantize_minimum_readvariableop_resource5^quantize_layer_1/AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype02K
Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpBquantize_layer_1_allvaluesquantize_maximum_readvariableop_resource5^quantize_layer_1/AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype02M
Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
:quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputsQquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Squantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????2<
:quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars?
.quant_dense/LastValueQuant/Rank/ReadVariableOpReadVariableOp7quant_dense_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype020
.quant_dense/LastValueQuant/Rank/ReadVariableOp?
quant_dense/LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2!
quant_dense/LastValueQuant/Rank?
&quant_dense/LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2(
&quant_dense/LastValueQuant/range/start?
&quant_dense/LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2(
&quant_dense/LastValueQuant/range/delta?
 quant_dense/LastValueQuant/rangeRange/quant_dense/LastValueQuant/range/start:output:0(quant_dense/LastValueQuant/Rank:output:0/quant_dense/LastValueQuant/range/delta:output:0*
_output_shapes
:2"
 quant_dense/LastValueQuant/range?
2quant_dense/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp7quant_dense_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype024
2quant_dense/LastValueQuant/BatchMin/ReadVariableOp?
#quant_dense/LastValueQuant/BatchMinMin:quant_dense/LastValueQuant/BatchMin/ReadVariableOp:value:0)quant_dense/LastValueQuant/range:output:0*
T0*
_output_shapes
: 2%
#quant_dense/LastValueQuant/BatchMin?
0quant_dense/LastValueQuant/Rank_1/ReadVariableOpReadVariableOp7quant_dense_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype022
0quant_dense/LastValueQuant/Rank_1/ReadVariableOp?
!quant_dense/LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2#
!quant_dense/LastValueQuant/Rank_1?
(quant_dense/LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2*
(quant_dense/LastValueQuant/range_1/start?
(quant_dense/LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2*
(quant_dense/LastValueQuant/range_1/delta?
"quant_dense/LastValueQuant/range_1Range1quant_dense/LastValueQuant/range_1/start:output:0*quant_dense/LastValueQuant/Rank_1:output:01quant_dense/LastValueQuant/range_1/delta:output:0*
_output_shapes
:2$
"quant_dense/LastValueQuant/range_1?
2quant_dense/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp7quant_dense_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype024
2quant_dense/LastValueQuant/BatchMax/ReadVariableOp?
#quant_dense/LastValueQuant/BatchMaxMax:quant_dense/LastValueQuant/BatchMax/ReadVariableOp:value:0+quant_dense/LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2%
#quant_dense/LastValueQuant/BatchMax?
$quant_dense/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$quant_dense/LastValueQuant/truediv/y?
"quant_dense/LastValueQuant/truedivRealDiv,quant_dense/LastValueQuant/BatchMax:output:0-quant_dense/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2$
"quant_dense/LastValueQuant/truediv?
"quant_dense/LastValueQuant/MinimumMinimum,quant_dense/LastValueQuant/BatchMin:output:0&quant_dense/LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2$
"quant_dense/LastValueQuant/Minimum?
 quant_dense/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 quant_dense/LastValueQuant/mul/y?
quant_dense/LastValueQuant/mulMul,quant_dense/LastValueQuant/BatchMin:output:0)quant_dense/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2 
quant_dense/LastValueQuant/mul?
"quant_dense/LastValueQuant/MaximumMaximum,quant_dense/LastValueQuant/BatchMax:output:0"quant_dense/LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2$
"quant_dense/LastValueQuant/Maximum?
(quant_dense/LastValueQuant/AssignMinLastAssignVariableOp1quant_dense_lastvaluequant_assignminlast_resource&quant_dense/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02*
(quant_dense/LastValueQuant/AssignMinLast?
(quant_dense/LastValueQuant/AssignMaxLastAssignVariableOp1quant_dense_lastvaluequant_assignmaxlast_resource&quant_dense/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02*
(quant_dense/LastValueQuant/AssignMaxLast?
Aquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp7quant_dense_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype02C
Aquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp1quant_dense_lastvaluequant_assignminlast_resource)^quant_dense/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02E
Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp1quant_dense_lastvaluequant_assignmaxlast_resource)^quant_dense/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02E
Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
2quant_dense/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsIquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Kquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Kquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: *
narrow_range(24
2quant_dense/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense/MatMulMatMulDquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0<quant_dense/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:????????? 2
quant_dense/MatMul?
"quant_dense/BiasAdd/ReadVariableOpReadVariableOp+quant_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"quant_dense/BiasAdd/ReadVariableOp?
quant_dense/BiasAddBiasAddquant_dense/MatMul:product:0*quant_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
quant_dense/BiasAdd|
quant_dense/ReluReluquant_dense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
quant_dense/Relu?
#quant_dense/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2%
#quant_dense/MovingAvgQuantize/Const?
&quant_dense/MovingAvgQuantize/BatchMinMinquant_dense/Relu:activations:0,quant_dense/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2(
&quant_dense/MovingAvgQuantize/BatchMin?
%quant_dense/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2'
%quant_dense/MovingAvgQuantize/Const_1?
&quant_dense/MovingAvgQuantize/BatchMaxMaxquant_dense/Relu:activations:0.quant_dense/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2(
&quant_dense/MovingAvgQuantize/BatchMax?
'quant_dense/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'quant_dense/MovingAvgQuantize/Minimum/y?
%quant_dense/MovingAvgQuantize/MinimumMinimum/quant_dense/MovingAvgQuantize/BatchMin:output:00quant_dense/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2'
%quant_dense/MovingAvgQuantize/Minimum?
'quant_dense/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'quant_dense/MovingAvgQuantize/Maximum/y?
%quant_dense/MovingAvgQuantize/MaximumMaximum/quant_dense/MovingAvgQuantize/BatchMax:output:00quant_dense/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2'
%quant_dense/MovingAvgQuantize/Maximum?
0quant_dense/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0quant_dense/MovingAvgQuantize/AssignMinEma/decay?
9quant_dense/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpBquant_dense_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02;
9quant_dense/MovingAvgQuantize/AssignMinEma/ReadVariableOp?
.quant_dense/MovingAvgQuantize/AssignMinEma/subSubAquant_dense/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0)quant_dense/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 20
.quant_dense/MovingAvgQuantize/AssignMinEma/sub?
.quant_dense/MovingAvgQuantize/AssignMinEma/mulMul2quant_dense/MovingAvgQuantize/AssignMinEma/sub:z:09quant_dense/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 20
.quant_dense/MovingAvgQuantize/AssignMinEma/mul?
>quant_dense/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpBquant_dense_movingavgquantize_assignminema_readvariableop_resource2quant_dense/MovingAvgQuantize/AssignMinEma/mul:z:0:^quant_dense/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype02@
>quant_dense/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
0quant_dense/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0quant_dense/MovingAvgQuantize/AssignMaxEma/decay?
9quant_dense/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpBquant_dense_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02;
9quant_dense/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
.quant_dense/MovingAvgQuantize/AssignMaxEma/subSubAquant_dense/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0)quant_dense/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 20
.quant_dense/MovingAvgQuantize/AssignMaxEma/sub?
.quant_dense/MovingAvgQuantize/AssignMaxEma/mulMul2quant_dense/MovingAvgQuantize/AssignMaxEma/sub:z:09quant_dense/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 20
.quant_dense/MovingAvgQuantize/AssignMaxEma/mul?
>quant_dense/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpBquant_dense_movingavgquantize_assignmaxema_readvariableop_resource2quant_dense/MovingAvgQuantize/AssignMaxEma/mul:z:0:^quant_dense/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype02@
>quant_dense/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
Dquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpBquant_dense_movingavgquantize_assignminema_readvariableop_resource?^quant_dense/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02F
Dquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Fquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpBquant_dense_movingavgquantize_assignmaxema_readvariableop_resource?^quant_dense/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02H
Fquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsquant_dense/Relu:activations:0Lquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Nquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:????????? 27
5quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars?
0quant_dense_1/LastValueQuant/Rank/ReadVariableOpReadVariableOp9quant_dense_1_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype022
0quant_dense_1/LastValueQuant/Rank/ReadVariableOp?
!quant_dense_1/LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2#
!quant_dense_1/LastValueQuant/Rank?
(quant_dense_1/LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2*
(quant_dense_1/LastValueQuant/range/start?
(quant_dense_1/LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2*
(quant_dense_1/LastValueQuant/range/delta?
"quant_dense_1/LastValueQuant/rangeRange1quant_dense_1/LastValueQuant/range/start:output:0*quant_dense_1/LastValueQuant/Rank:output:01quant_dense_1/LastValueQuant/range/delta:output:0*
_output_shapes
:2$
"quant_dense_1/LastValueQuant/range?
4quant_dense_1/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp9quant_dense_1_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype026
4quant_dense_1/LastValueQuant/BatchMin/ReadVariableOp?
%quant_dense_1/LastValueQuant/BatchMinMin<quant_dense_1/LastValueQuant/BatchMin/ReadVariableOp:value:0+quant_dense_1/LastValueQuant/range:output:0*
T0*
_output_shapes
: 2'
%quant_dense_1/LastValueQuant/BatchMin?
2quant_dense_1/LastValueQuant/Rank_1/ReadVariableOpReadVariableOp9quant_dense_1_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype024
2quant_dense_1/LastValueQuant/Rank_1/ReadVariableOp?
#quant_dense_1/LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2%
#quant_dense_1/LastValueQuant/Rank_1?
*quant_dense_1/LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*quant_dense_1/LastValueQuant/range_1/start?
*quant_dense_1/LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*quant_dense_1/LastValueQuant/range_1/delta?
$quant_dense_1/LastValueQuant/range_1Range3quant_dense_1/LastValueQuant/range_1/start:output:0,quant_dense_1/LastValueQuant/Rank_1:output:03quant_dense_1/LastValueQuant/range_1/delta:output:0*
_output_shapes
:2&
$quant_dense_1/LastValueQuant/range_1?
4quant_dense_1/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp9quant_dense_1_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype026
4quant_dense_1/LastValueQuant/BatchMax/ReadVariableOp?
%quant_dense_1/LastValueQuant/BatchMaxMax<quant_dense_1/LastValueQuant/BatchMax/ReadVariableOp:value:0-quant_dense_1/LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2'
%quant_dense_1/LastValueQuant/BatchMax?
&quant_dense_1/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&quant_dense_1/LastValueQuant/truediv/y?
$quant_dense_1/LastValueQuant/truedivRealDiv.quant_dense_1/LastValueQuant/BatchMax:output:0/quant_dense_1/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2&
$quant_dense_1/LastValueQuant/truediv?
$quant_dense_1/LastValueQuant/MinimumMinimum.quant_dense_1/LastValueQuant/BatchMin:output:0(quant_dense_1/LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2&
$quant_dense_1/LastValueQuant/Minimum?
"quant_dense_1/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"quant_dense_1/LastValueQuant/mul/y?
 quant_dense_1/LastValueQuant/mulMul.quant_dense_1/LastValueQuant/BatchMin:output:0+quant_dense_1/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2"
 quant_dense_1/LastValueQuant/mul?
$quant_dense_1/LastValueQuant/MaximumMaximum.quant_dense_1/LastValueQuant/BatchMax:output:0$quant_dense_1/LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2&
$quant_dense_1/LastValueQuant/Maximum?
*quant_dense_1/LastValueQuant/AssignMinLastAssignVariableOp3quant_dense_1_lastvaluequant_assignminlast_resource(quant_dense_1/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02,
*quant_dense_1/LastValueQuant/AssignMinLast?
*quant_dense_1/LastValueQuant/AssignMaxLastAssignVariableOp3quant_dense_1_lastvaluequant_assignmaxlast_resource(quant_dense_1/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02,
*quant_dense_1/LastValueQuant/AssignMaxLast?
Cquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp9quant_dense_1_lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype02E
Cquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp3quant_dense_1_lastvaluequant_assignminlast_resource+^quant_dense_1/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02G
Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp3quant_dense_1_lastvaluequant_assignmaxlast_resource+^quant_dense_1/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02G
Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
4quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsKquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Mquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Mquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: @*
narrow_range(26
4quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_1/MatMulMatMul?quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0>quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
quant_dense_1/MatMul?
$quant_dense_1/BiasAdd/ReadVariableOpReadVariableOp-quant_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$quant_dense_1/BiasAdd/ReadVariableOp?
quant_dense_1/BiasAddBiasAddquant_dense_1/MatMul:product:0,quant_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
quant_dense_1/BiasAdd?
quant_dense_1/ReluReluquant_dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
quant_dense_1/Relu?
%quant_dense_1/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2'
%quant_dense_1/MovingAvgQuantize/Const?
(quant_dense_1/MovingAvgQuantize/BatchMinMin quant_dense_1/Relu:activations:0.quant_dense_1/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2*
(quant_dense_1/MovingAvgQuantize/BatchMin?
'quant_dense_1/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'quant_dense_1/MovingAvgQuantize/Const_1?
(quant_dense_1/MovingAvgQuantize/BatchMaxMax quant_dense_1/Relu:activations:00quant_dense_1/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2*
(quant_dense_1/MovingAvgQuantize/BatchMax?
)quant_dense_1/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)quant_dense_1/MovingAvgQuantize/Minimum/y?
'quant_dense_1/MovingAvgQuantize/MinimumMinimum1quant_dense_1/MovingAvgQuantize/BatchMin:output:02quant_dense_1/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2)
'quant_dense_1/MovingAvgQuantize/Minimum?
)quant_dense_1/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)quant_dense_1/MovingAvgQuantize/Maximum/y?
'quant_dense_1/MovingAvgQuantize/MaximumMaximum1quant_dense_1/MovingAvgQuantize/BatchMax:output:02quant_dense_1/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2)
'quant_dense_1/MovingAvgQuantize/Maximum?
2quant_dense_1/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2quant_dense_1/MovingAvgQuantize/AssignMinEma/decay?
;quant_dense_1/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpDquant_dense_1_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02=
;quant_dense_1/MovingAvgQuantize/AssignMinEma/ReadVariableOp?
0quant_dense_1/MovingAvgQuantize/AssignMinEma/subSubCquant_dense_1/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0+quant_dense_1/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 22
0quant_dense_1/MovingAvgQuantize/AssignMinEma/sub?
0quant_dense_1/MovingAvgQuantize/AssignMinEma/mulMul4quant_dense_1/MovingAvgQuantize/AssignMinEma/sub:z:0;quant_dense_1/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 22
0quant_dense_1/MovingAvgQuantize/AssignMinEma/mul?
@quant_dense_1/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpDquant_dense_1_movingavgquantize_assignminema_readvariableop_resource4quant_dense_1/MovingAvgQuantize/AssignMinEma/mul:z:0<^quant_dense_1/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype02B
@quant_dense_1/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
2quant_dense_1/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2quant_dense_1/MovingAvgQuantize/AssignMaxEma/decay?
;quant_dense_1/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpDquant_dense_1_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02=
;quant_dense_1/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
0quant_dense_1/MovingAvgQuantize/AssignMaxEma/subSubCquant_dense_1/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0+quant_dense_1/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 22
0quant_dense_1/MovingAvgQuantize/AssignMaxEma/sub?
0quant_dense_1/MovingAvgQuantize/AssignMaxEma/mulMul4quant_dense_1/MovingAvgQuantize/AssignMaxEma/sub:z:0;quant_dense_1/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 22
0quant_dense_1/MovingAvgQuantize/AssignMaxEma/mul?
@quant_dense_1/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpDquant_dense_1_movingavgquantize_assignmaxema_readvariableop_resource4quant_dense_1/MovingAvgQuantize/AssignMaxEma/mul:z:0<^quant_dense_1/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype02B
@quant_dense_1/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
Fquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpDquant_dense_1_movingavgquantize_assignminema_readvariableop_resourceA^quant_dense_1/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02H
Fquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Hquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpDquant_dense_1_movingavgquantize_assignmaxema_readvariableop_resourceA^quant_dense_1/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02J
Hquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars quant_dense_1/Relu:activations:0Nquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Pquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@29
7quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars?
0quant_dense_2/LastValueQuant/Rank/ReadVariableOpReadVariableOp9quant_dense_2_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype022
0quant_dense_2/LastValueQuant/Rank/ReadVariableOp?
!quant_dense_2/LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2#
!quant_dense_2/LastValueQuant/Rank?
(quant_dense_2/LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2*
(quant_dense_2/LastValueQuant/range/start?
(quant_dense_2/LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2*
(quant_dense_2/LastValueQuant/range/delta?
"quant_dense_2/LastValueQuant/rangeRange1quant_dense_2/LastValueQuant/range/start:output:0*quant_dense_2/LastValueQuant/Rank:output:01quant_dense_2/LastValueQuant/range/delta:output:0*
_output_shapes
:2$
"quant_dense_2/LastValueQuant/range?
4quant_dense_2/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp9quant_dense_2_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype026
4quant_dense_2/LastValueQuant/BatchMin/ReadVariableOp?
%quant_dense_2/LastValueQuant/BatchMinMin<quant_dense_2/LastValueQuant/BatchMin/ReadVariableOp:value:0+quant_dense_2/LastValueQuant/range:output:0*
T0*
_output_shapes
: 2'
%quant_dense_2/LastValueQuant/BatchMin?
2quant_dense_2/LastValueQuant/Rank_1/ReadVariableOpReadVariableOp9quant_dense_2_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype024
2quant_dense_2/LastValueQuant/Rank_1/ReadVariableOp?
#quant_dense_2/LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2%
#quant_dense_2/LastValueQuant/Rank_1?
*quant_dense_2/LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*quant_dense_2/LastValueQuant/range_1/start?
*quant_dense_2/LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*quant_dense_2/LastValueQuant/range_1/delta?
$quant_dense_2/LastValueQuant/range_1Range3quant_dense_2/LastValueQuant/range_1/start:output:0,quant_dense_2/LastValueQuant/Rank_1:output:03quant_dense_2/LastValueQuant/range_1/delta:output:0*
_output_shapes
:2&
$quant_dense_2/LastValueQuant/range_1?
4quant_dense_2/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp9quant_dense_2_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype026
4quant_dense_2/LastValueQuant/BatchMax/ReadVariableOp?
%quant_dense_2/LastValueQuant/BatchMaxMax<quant_dense_2/LastValueQuant/BatchMax/ReadVariableOp:value:0-quant_dense_2/LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2'
%quant_dense_2/LastValueQuant/BatchMax?
&quant_dense_2/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&quant_dense_2/LastValueQuant/truediv/y?
$quant_dense_2/LastValueQuant/truedivRealDiv.quant_dense_2/LastValueQuant/BatchMax:output:0/quant_dense_2/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2&
$quant_dense_2/LastValueQuant/truediv?
$quant_dense_2/LastValueQuant/MinimumMinimum.quant_dense_2/LastValueQuant/BatchMin:output:0(quant_dense_2/LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2&
$quant_dense_2/LastValueQuant/Minimum?
"quant_dense_2/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"quant_dense_2/LastValueQuant/mul/y?
 quant_dense_2/LastValueQuant/mulMul.quant_dense_2/LastValueQuant/BatchMin:output:0+quant_dense_2/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2"
 quant_dense_2/LastValueQuant/mul?
$quant_dense_2/LastValueQuant/MaximumMaximum.quant_dense_2/LastValueQuant/BatchMax:output:0$quant_dense_2/LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2&
$quant_dense_2/LastValueQuant/Maximum?
*quant_dense_2/LastValueQuant/AssignMinLastAssignVariableOp3quant_dense_2_lastvaluequant_assignminlast_resource(quant_dense_2/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02,
*quant_dense_2/LastValueQuant/AssignMinLast?
*quant_dense_2/LastValueQuant/AssignMaxLastAssignVariableOp3quant_dense_2_lastvaluequant_assignmaxlast_resource(quant_dense_2/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02,
*quant_dense_2/LastValueQuant/AssignMaxLast?
Cquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp9quant_dense_2_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype02E
Cquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp3quant_dense_2_lastvaluequant_assignminlast_resource+^quant_dense_2/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02G
Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp3quant_dense_2_lastvaluequant_assignmaxlast_resource+^quant_dense_2/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02G
Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
4quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsKquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Mquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Mquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	@?*
narrow_range(26
4quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_2/MatMulMatMulAquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0>quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*(
_output_shapes
:??????????2
quant_dense_2/MatMul?
$quant_dense_2/BiasAdd/ReadVariableOpReadVariableOp-quant_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$quant_dense_2/BiasAdd/ReadVariableOp?
quant_dense_2/BiasAddBiasAddquant_dense_2/MatMul:product:0,quant_dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
quant_dense_2/BiasAdd?
quant_dense_2/ReluReluquant_dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
quant_dense_2/Relu?
%quant_dense_2/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2'
%quant_dense_2/MovingAvgQuantize/Const?
(quant_dense_2/MovingAvgQuantize/BatchMinMin quant_dense_2/Relu:activations:0.quant_dense_2/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2*
(quant_dense_2/MovingAvgQuantize/BatchMin?
'quant_dense_2/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'quant_dense_2/MovingAvgQuantize/Const_1?
(quant_dense_2/MovingAvgQuantize/BatchMaxMax quant_dense_2/Relu:activations:00quant_dense_2/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2*
(quant_dense_2/MovingAvgQuantize/BatchMax?
)quant_dense_2/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)quant_dense_2/MovingAvgQuantize/Minimum/y?
'quant_dense_2/MovingAvgQuantize/MinimumMinimum1quant_dense_2/MovingAvgQuantize/BatchMin:output:02quant_dense_2/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2)
'quant_dense_2/MovingAvgQuantize/Minimum?
)quant_dense_2/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)quant_dense_2/MovingAvgQuantize/Maximum/y?
'quant_dense_2/MovingAvgQuantize/MaximumMaximum1quant_dense_2/MovingAvgQuantize/BatchMax:output:02quant_dense_2/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2)
'quant_dense_2/MovingAvgQuantize/Maximum?
2quant_dense_2/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2quant_dense_2/MovingAvgQuantize/AssignMinEma/decay?
;quant_dense_2/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpDquant_dense_2_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02=
;quant_dense_2/MovingAvgQuantize/AssignMinEma/ReadVariableOp?
0quant_dense_2/MovingAvgQuantize/AssignMinEma/subSubCquant_dense_2/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0+quant_dense_2/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 22
0quant_dense_2/MovingAvgQuantize/AssignMinEma/sub?
0quant_dense_2/MovingAvgQuantize/AssignMinEma/mulMul4quant_dense_2/MovingAvgQuantize/AssignMinEma/sub:z:0;quant_dense_2/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 22
0quant_dense_2/MovingAvgQuantize/AssignMinEma/mul?
@quant_dense_2/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpDquant_dense_2_movingavgquantize_assignminema_readvariableop_resource4quant_dense_2/MovingAvgQuantize/AssignMinEma/mul:z:0<^quant_dense_2/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype02B
@quant_dense_2/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
2quant_dense_2/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2quant_dense_2/MovingAvgQuantize/AssignMaxEma/decay?
;quant_dense_2/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpDquant_dense_2_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02=
;quant_dense_2/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
0quant_dense_2/MovingAvgQuantize/AssignMaxEma/subSubCquant_dense_2/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0+quant_dense_2/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 22
0quant_dense_2/MovingAvgQuantize/AssignMaxEma/sub?
0quant_dense_2/MovingAvgQuantize/AssignMaxEma/mulMul4quant_dense_2/MovingAvgQuantize/AssignMaxEma/sub:z:0;quant_dense_2/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 22
0quant_dense_2/MovingAvgQuantize/AssignMaxEma/mul?
@quant_dense_2/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpDquant_dense_2_movingavgquantize_assignmaxema_readvariableop_resource4quant_dense_2/MovingAvgQuantize/AssignMaxEma/mul:z:0<^quant_dense_2/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype02B
@quant_dense_2/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
Fquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpDquant_dense_2_movingavgquantize_assignminema_readvariableop_resourceA^quant_dense_2/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02H
Fquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Hquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpDquant_dense_2_movingavgquantize_assignmaxema_readvariableop_resourceA^quant_dense_2/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02J
Hquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars quant_dense_2/Relu:activations:0Nquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Pquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*(
_output_shapes
:??????????29
7quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars?
0quant_dense_3/LastValueQuant/Rank/ReadVariableOpReadVariableOp9quant_dense_3_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype022
0quant_dense_3/LastValueQuant/Rank/ReadVariableOp?
!quant_dense_3/LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2#
!quant_dense_3/LastValueQuant/Rank?
(quant_dense_3/LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2*
(quant_dense_3/LastValueQuant/range/start?
(quant_dense_3/LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2*
(quant_dense_3/LastValueQuant/range/delta?
"quant_dense_3/LastValueQuant/rangeRange1quant_dense_3/LastValueQuant/range/start:output:0*quant_dense_3/LastValueQuant/Rank:output:01quant_dense_3/LastValueQuant/range/delta:output:0*
_output_shapes
:2$
"quant_dense_3/LastValueQuant/range?
4quant_dense_3/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp9quant_dense_3_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype026
4quant_dense_3/LastValueQuant/BatchMin/ReadVariableOp?
%quant_dense_3/LastValueQuant/BatchMinMin<quant_dense_3/LastValueQuant/BatchMin/ReadVariableOp:value:0+quant_dense_3/LastValueQuant/range:output:0*
T0*
_output_shapes
: 2'
%quant_dense_3/LastValueQuant/BatchMin?
2quant_dense_3/LastValueQuant/Rank_1/ReadVariableOpReadVariableOp9quant_dense_3_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype024
2quant_dense_3/LastValueQuant/Rank_1/ReadVariableOp?
#quant_dense_3/LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2%
#quant_dense_3/LastValueQuant/Rank_1?
*quant_dense_3/LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*quant_dense_3/LastValueQuant/range_1/start?
*quant_dense_3/LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*quant_dense_3/LastValueQuant/range_1/delta?
$quant_dense_3/LastValueQuant/range_1Range3quant_dense_3/LastValueQuant/range_1/start:output:0,quant_dense_3/LastValueQuant/Rank_1:output:03quant_dense_3/LastValueQuant/range_1/delta:output:0*
_output_shapes
:2&
$quant_dense_3/LastValueQuant/range_1?
4quant_dense_3/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp9quant_dense_3_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype026
4quant_dense_3/LastValueQuant/BatchMax/ReadVariableOp?
%quant_dense_3/LastValueQuant/BatchMaxMax<quant_dense_3/LastValueQuant/BatchMax/ReadVariableOp:value:0-quant_dense_3/LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2'
%quant_dense_3/LastValueQuant/BatchMax?
&quant_dense_3/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&quant_dense_3/LastValueQuant/truediv/y?
$quant_dense_3/LastValueQuant/truedivRealDiv.quant_dense_3/LastValueQuant/BatchMax:output:0/quant_dense_3/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2&
$quant_dense_3/LastValueQuant/truediv?
$quant_dense_3/LastValueQuant/MinimumMinimum.quant_dense_3/LastValueQuant/BatchMin:output:0(quant_dense_3/LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2&
$quant_dense_3/LastValueQuant/Minimum?
"quant_dense_3/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"quant_dense_3/LastValueQuant/mul/y?
 quant_dense_3/LastValueQuant/mulMul.quant_dense_3/LastValueQuant/BatchMin:output:0+quant_dense_3/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2"
 quant_dense_3/LastValueQuant/mul?
$quant_dense_3/LastValueQuant/MaximumMaximum.quant_dense_3/LastValueQuant/BatchMax:output:0$quant_dense_3/LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2&
$quant_dense_3/LastValueQuant/Maximum?
*quant_dense_3/LastValueQuant/AssignMinLastAssignVariableOp3quant_dense_3_lastvaluequant_assignminlast_resource(quant_dense_3/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02,
*quant_dense_3/LastValueQuant/AssignMinLast?
*quant_dense_3/LastValueQuant/AssignMaxLastAssignVariableOp3quant_dense_3_lastvaluequant_assignmaxlast_resource(quant_dense_3/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02,
*quant_dense_3/LastValueQuant/AssignMaxLast?
Cquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp9quant_dense_3_lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	?@*
dtype02E
Cquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp3quant_dense_3_lastvaluequant_assignminlast_resource+^quant_dense_3/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02G
Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp3quant_dense_3_lastvaluequant_assignmaxlast_resource+^quant_dense_3/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02G
Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
4quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsKquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Mquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Mquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	?@*
narrow_range(26
4quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_3/MatMulMatMulAquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0>quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
quant_dense_3/MatMul?
$quant_dense_3/BiasAdd/ReadVariableOpReadVariableOp-quant_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$quant_dense_3/BiasAdd/ReadVariableOp?
quant_dense_3/BiasAddBiasAddquant_dense_3/MatMul:product:0,quant_dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
quant_dense_3/BiasAdd?
quant_dense_3/ReluReluquant_dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
quant_dense_3/Relu?
%quant_dense_3/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2'
%quant_dense_3/MovingAvgQuantize/Const?
(quant_dense_3/MovingAvgQuantize/BatchMinMin quant_dense_3/Relu:activations:0.quant_dense_3/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2*
(quant_dense_3/MovingAvgQuantize/BatchMin?
'quant_dense_3/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'quant_dense_3/MovingAvgQuantize/Const_1?
(quant_dense_3/MovingAvgQuantize/BatchMaxMax quant_dense_3/Relu:activations:00quant_dense_3/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2*
(quant_dense_3/MovingAvgQuantize/BatchMax?
)quant_dense_3/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)quant_dense_3/MovingAvgQuantize/Minimum/y?
'quant_dense_3/MovingAvgQuantize/MinimumMinimum1quant_dense_3/MovingAvgQuantize/BatchMin:output:02quant_dense_3/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2)
'quant_dense_3/MovingAvgQuantize/Minimum?
)quant_dense_3/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)quant_dense_3/MovingAvgQuantize/Maximum/y?
'quant_dense_3/MovingAvgQuantize/MaximumMaximum1quant_dense_3/MovingAvgQuantize/BatchMax:output:02quant_dense_3/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2)
'quant_dense_3/MovingAvgQuantize/Maximum?
2quant_dense_3/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2quant_dense_3/MovingAvgQuantize/AssignMinEma/decay?
;quant_dense_3/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpDquant_dense_3_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02=
;quant_dense_3/MovingAvgQuantize/AssignMinEma/ReadVariableOp?
0quant_dense_3/MovingAvgQuantize/AssignMinEma/subSubCquant_dense_3/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0+quant_dense_3/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 22
0quant_dense_3/MovingAvgQuantize/AssignMinEma/sub?
0quant_dense_3/MovingAvgQuantize/AssignMinEma/mulMul4quant_dense_3/MovingAvgQuantize/AssignMinEma/sub:z:0;quant_dense_3/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 22
0quant_dense_3/MovingAvgQuantize/AssignMinEma/mul?
@quant_dense_3/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpDquant_dense_3_movingavgquantize_assignminema_readvariableop_resource4quant_dense_3/MovingAvgQuantize/AssignMinEma/mul:z:0<^quant_dense_3/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype02B
@quant_dense_3/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
2quant_dense_3/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2quant_dense_3/MovingAvgQuantize/AssignMaxEma/decay?
;quant_dense_3/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpDquant_dense_3_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02=
;quant_dense_3/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
0quant_dense_3/MovingAvgQuantize/AssignMaxEma/subSubCquant_dense_3/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0+quant_dense_3/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 22
0quant_dense_3/MovingAvgQuantize/AssignMaxEma/sub?
0quant_dense_3/MovingAvgQuantize/AssignMaxEma/mulMul4quant_dense_3/MovingAvgQuantize/AssignMaxEma/sub:z:0;quant_dense_3/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 22
0quant_dense_3/MovingAvgQuantize/AssignMaxEma/mul?
@quant_dense_3/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpDquant_dense_3_movingavgquantize_assignmaxema_readvariableop_resource4quant_dense_3/MovingAvgQuantize/AssignMaxEma/mul:z:0<^quant_dense_3/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype02B
@quant_dense_3/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
Fquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpDquant_dense_3_movingavgquantize_assignminema_readvariableop_resourceA^quant_dense_3/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02H
Fquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Hquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpDquant_dense_3_movingavgquantize_assignmaxema_readvariableop_resourceA^quant_dense_3/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02J
Hquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars quant_dense_3/Relu:activations:0Nquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Pquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@29
7quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars
quant_dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
quant_dropout/dropout/Const?
quant_dropout/dropout/MulMulAquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0$quant_dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
quant_dropout/dropout/Mul?
quant_dropout/dropout/ShapeShapeAquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*
_output_shapes
:2
quant_dropout/dropout/Shape?
2quant_dropout/dropout/random_uniform/RandomUniformRandomUniform$quant_dropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype024
2quant_dropout/dropout/random_uniform/RandomUniform?
$quant_dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2&
$quant_dropout/dropout/GreaterEqual/y?
"quant_dropout/dropout/GreaterEqualGreaterEqual;quant_dropout/dropout/random_uniform/RandomUniform:output:0-quant_dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2$
"quant_dropout/dropout/GreaterEqual?
quant_dropout/dropout/CastCast&quant_dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
quant_dropout/dropout/Cast?
quant_dropout/dropout/Mul_1Mulquant_dropout/dropout/Mul:z:0quant_dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
quant_dropout/dropout/Mul_1?
0quant_dense_4/LastValueQuant/Rank/ReadVariableOpReadVariableOp9quant_dense_4_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype022
0quant_dense_4/LastValueQuant/Rank/ReadVariableOp?
!quant_dense_4/LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2#
!quant_dense_4/LastValueQuant/Rank?
(quant_dense_4/LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2*
(quant_dense_4/LastValueQuant/range/start?
(quant_dense_4/LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2*
(quant_dense_4/LastValueQuant/range/delta?
"quant_dense_4/LastValueQuant/rangeRange1quant_dense_4/LastValueQuant/range/start:output:0*quant_dense_4/LastValueQuant/Rank:output:01quant_dense_4/LastValueQuant/range/delta:output:0*
_output_shapes
:2$
"quant_dense_4/LastValueQuant/range?
4quant_dense_4/LastValueQuant/BatchMin/ReadVariableOpReadVariableOp9quant_dense_4_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype026
4quant_dense_4/LastValueQuant/BatchMin/ReadVariableOp?
%quant_dense_4/LastValueQuant/BatchMinMin<quant_dense_4/LastValueQuant/BatchMin/ReadVariableOp:value:0+quant_dense_4/LastValueQuant/range:output:0*
T0*
_output_shapes
: 2'
%quant_dense_4/LastValueQuant/BatchMin?
2quant_dense_4/LastValueQuant/Rank_1/ReadVariableOpReadVariableOp9quant_dense_4_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype024
2quant_dense_4/LastValueQuant/Rank_1/ReadVariableOp?
#quant_dense_4/LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2%
#quant_dense_4/LastValueQuant/Rank_1?
*quant_dense_4/LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*quant_dense_4/LastValueQuant/range_1/start?
*quant_dense_4/LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*quant_dense_4/LastValueQuant/range_1/delta?
$quant_dense_4/LastValueQuant/range_1Range3quant_dense_4/LastValueQuant/range_1/start:output:0,quant_dense_4/LastValueQuant/Rank_1:output:03quant_dense_4/LastValueQuant/range_1/delta:output:0*
_output_shapes
:2&
$quant_dense_4/LastValueQuant/range_1?
4quant_dense_4/LastValueQuant/BatchMax/ReadVariableOpReadVariableOp9quant_dense_4_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype026
4quant_dense_4/LastValueQuant/BatchMax/ReadVariableOp?
%quant_dense_4/LastValueQuant/BatchMaxMax<quant_dense_4/LastValueQuant/BatchMax/ReadVariableOp:value:0-quant_dense_4/LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2'
%quant_dense_4/LastValueQuant/BatchMax?
&quant_dense_4/LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&quant_dense_4/LastValueQuant/truediv/y?
$quant_dense_4/LastValueQuant/truedivRealDiv.quant_dense_4/LastValueQuant/BatchMax:output:0/quant_dense_4/LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2&
$quant_dense_4/LastValueQuant/truediv?
$quant_dense_4/LastValueQuant/MinimumMinimum.quant_dense_4/LastValueQuant/BatchMin:output:0(quant_dense_4/LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2&
$quant_dense_4/LastValueQuant/Minimum?
"quant_dense_4/LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"quant_dense_4/LastValueQuant/mul/y?
 quant_dense_4/LastValueQuant/mulMul.quant_dense_4/LastValueQuant/BatchMin:output:0+quant_dense_4/LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2"
 quant_dense_4/LastValueQuant/mul?
$quant_dense_4/LastValueQuant/MaximumMaximum.quant_dense_4/LastValueQuant/BatchMax:output:0$quant_dense_4/LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2&
$quant_dense_4/LastValueQuant/Maximum?
*quant_dense_4/LastValueQuant/AssignMinLastAssignVariableOp3quant_dense_4_lastvaluequant_assignminlast_resource(quant_dense_4/LastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02,
*quant_dense_4/LastValueQuant/AssignMinLast?
*quant_dense_4/LastValueQuant/AssignMaxLastAssignVariableOp3quant_dense_4_lastvaluequant_assignmaxlast_resource(quant_dense_4/LastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02,
*quant_dense_4/LastValueQuant/AssignMaxLast?
Cquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp9quant_dense_4_lastvaluequant_rank_readvariableop_resource*
_output_shapes

:@*
dtype02E
Cquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp3quant_dense_4_lastvaluequant_assignminlast_resource+^quant_dense_4/LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype02G
Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp3quant_dense_4_lastvaluequant_assignmaxlast_resource+^quant_dense_4/LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype02G
Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
4quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsKquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Mquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Mquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:@*
narrow_range(26
4quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_4/MatMulMatMulquant_dropout/dropout/Mul_1:z:0>quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2
quant_dense_4/MatMul?
$quant_dense_4/BiasAdd/ReadVariableOpReadVariableOp-quant_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$quant_dense_4/BiasAdd/ReadVariableOp?
quant_dense_4/BiasAddBiasAddquant_dense_4/MatMul:product:0,quant_dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
quant_dense_4/BiasAdd?
%quant_dense_4/MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2'
%quant_dense_4/MovingAvgQuantize/Const?
(quant_dense_4/MovingAvgQuantize/BatchMinMinquant_dense_4/BiasAdd:output:0.quant_dense_4/MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2*
(quant_dense_4/MovingAvgQuantize/BatchMin?
'quant_dense_4/MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2)
'quant_dense_4/MovingAvgQuantize/Const_1?
(quant_dense_4/MovingAvgQuantize/BatchMaxMaxquant_dense_4/BiasAdd:output:00quant_dense_4/MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2*
(quant_dense_4/MovingAvgQuantize/BatchMax?
)quant_dense_4/MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)quant_dense_4/MovingAvgQuantize/Minimum/y?
'quant_dense_4/MovingAvgQuantize/MinimumMinimum1quant_dense_4/MovingAvgQuantize/BatchMin:output:02quant_dense_4/MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2)
'quant_dense_4/MovingAvgQuantize/Minimum?
)quant_dense_4/MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2+
)quant_dense_4/MovingAvgQuantize/Maximum/y?
'quant_dense_4/MovingAvgQuantize/MaximumMaximum1quant_dense_4/MovingAvgQuantize/BatchMax:output:02quant_dense_4/MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2)
'quant_dense_4/MovingAvgQuantize/Maximum?
2quant_dense_4/MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2quant_dense_4/MovingAvgQuantize/AssignMinEma/decay?
;quant_dense_4/MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOpDquant_dense_4_movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02=
;quant_dense_4/MovingAvgQuantize/AssignMinEma/ReadVariableOp?
0quant_dense_4/MovingAvgQuantize/AssignMinEma/subSubCquant_dense_4/MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0+quant_dense_4/MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 22
0quant_dense_4/MovingAvgQuantize/AssignMinEma/sub?
0quant_dense_4/MovingAvgQuantize/AssignMinEma/mulMul4quant_dense_4/MovingAvgQuantize/AssignMinEma/sub:z:0;quant_dense_4/MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 22
0quant_dense_4/MovingAvgQuantize/AssignMinEma/mul?
@quant_dense_4/MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOpDquant_dense_4_movingavgquantize_assignminema_readvariableop_resource4quant_dense_4/MovingAvgQuantize/AssignMinEma/mul:z:0<^quant_dense_4/MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype02B
@quant_dense_4/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
2quant_dense_4/MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:24
2quant_dense_4/MovingAvgQuantize/AssignMaxEma/decay?
;quant_dense_4/MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOpDquant_dense_4_movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02=
;quant_dense_4/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
0quant_dense_4/MovingAvgQuantize/AssignMaxEma/subSubCquant_dense_4/MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0+quant_dense_4/MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 22
0quant_dense_4/MovingAvgQuantize/AssignMaxEma/sub?
0quant_dense_4/MovingAvgQuantize/AssignMaxEma/mulMul4quant_dense_4/MovingAvgQuantize/AssignMaxEma/sub:z:0;quant_dense_4/MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 22
0quant_dense_4/MovingAvgQuantize/AssignMaxEma/mul?
@quant_dense_4/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOpDquant_dense_4_movingavgquantize_assignmaxema_readvariableop_resource4quant_dense_4/MovingAvgQuantize/AssignMaxEma/mul:z:0<^quant_dense_4/MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype02B
@quant_dense_4/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
Fquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpDquant_dense_4_movingavgquantize_assignminema_readvariableop_resourceA^quant_dense_4/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02H
Fquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Hquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpDquant_dense_4_movingavgquantize_assignmaxema_readvariableop_resourceA^quant_dense_4/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02J
Hquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsquant_dense_4/BiasAdd:output:0Nquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Pquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????29
7quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars?
quant_dense_4/SoftmaxSoftmaxAquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2
quant_dense_4/Softmax?%
IdentityIdentityquant_dense_4/Softmax:softmax:0#^quant_dense/BiasAdd/ReadVariableOp)^quant_dense/LastValueQuant/AssignMaxLast)^quant_dense/LastValueQuant/AssignMinLast3^quant_dense/LastValueQuant/BatchMax/ReadVariableOp3^quant_dense/LastValueQuant/BatchMin/ReadVariableOpB^quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpD^quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1D^quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?^quant_dense/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp:^quant_dense/MovingAvgQuantize/AssignMaxEma/ReadVariableOp?^quant_dense/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp:^quant_dense/MovingAvgQuantize/AssignMinEma/ReadVariableOpE^quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpG^quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1%^quant_dense_1/BiasAdd/ReadVariableOp+^quant_dense_1/LastValueQuant/AssignMaxLast+^quant_dense_1/LastValueQuant/AssignMinLast5^quant_dense_1/LastValueQuant/BatchMax/ReadVariableOp5^quant_dense_1/LastValueQuant/BatchMin/ReadVariableOpD^quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpF^quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1F^quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2A^quant_dense_1/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp<^quant_dense_1/MovingAvgQuantize/AssignMaxEma/ReadVariableOpA^quant_dense_1/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp<^quant_dense_1/MovingAvgQuantize/AssignMinEma/ReadVariableOpG^quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpI^quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1%^quant_dense_2/BiasAdd/ReadVariableOp+^quant_dense_2/LastValueQuant/AssignMaxLast+^quant_dense_2/LastValueQuant/AssignMinLast5^quant_dense_2/LastValueQuant/BatchMax/ReadVariableOp5^quant_dense_2/LastValueQuant/BatchMin/ReadVariableOpD^quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpF^quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1F^quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2A^quant_dense_2/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp<^quant_dense_2/MovingAvgQuantize/AssignMaxEma/ReadVariableOpA^quant_dense_2/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp<^quant_dense_2/MovingAvgQuantize/AssignMinEma/ReadVariableOpG^quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpI^quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1%^quant_dense_3/BiasAdd/ReadVariableOp+^quant_dense_3/LastValueQuant/AssignMaxLast+^quant_dense_3/LastValueQuant/AssignMinLast5^quant_dense_3/LastValueQuant/BatchMax/ReadVariableOp5^quant_dense_3/LastValueQuant/BatchMin/ReadVariableOpD^quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpF^quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1F^quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2A^quant_dense_3/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp<^quant_dense_3/MovingAvgQuantize/AssignMaxEma/ReadVariableOpA^quant_dense_3/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp<^quant_dense_3/MovingAvgQuantize/AssignMinEma/ReadVariableOpG^quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpI^quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1%^quant_dense_4/BiasAdd/ReadVariableOp+^quant_dense_4/LastValueQuant/AssignMaxLast+^quant_dense_4/LastValueQuant/AssignMinLast5^quant_dense_4/LastValueQuant/BatchMax/ReadVariableOp5^quant_dense_4/LastValueQuant/BatchMin/ReadVariableOpD^quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpF^quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1F^quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2A^quant_dense_4/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp<^quant_dense_4/MovingAvgQuantize/AssignMaxEma/ReadVariableOpA^quant_dense_4/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp<^quant_dense_4/MovingAvgQuantize/AssignMinEma/ReadVariableOpG^quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpI^quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_15^quantize_layer_1/AllValuesQuantize/AssignMaxAllValue5^quantize_layer_1/AllValuesQuantize/AssignMinAllValueJ^quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpL^quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:^quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp:^quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"quant_dense/BiasAdd/ReadVariableOp"quant_dense/BiasAdd/ReadVariableOp2T
(quant_dense/LastValueQuant/AssignMaxLast(quant_dense/LastValueQuant/AssignMaxLast2T
(quant_dense/LastValueQuant/AssignMinLast(quant_dense/LastValueQuant/AssignMinLast2h
2quant_dense/LastValueQuant/BatchMax/ReadVariableOp2quant_dense/LastValueQuant/BatchMax/ReadVariableOp2h
2quant_dense/LastValueQuant/BatchMin/ReadVariableOp2quant_dense/LastValueQuant/BatchMin/ReadVariableOp2?
Aquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpAquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
>quant_dense/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp>quant_dense/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2v
9quant_dense/MovingAvgQuantize/AssignMaxEma/ReadVariableOp9quant_dense/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2?
>quant_dense/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp>quant_dense/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2v
9quant_dense/MovingAvgQuantize/AssignMinEma/ReadVariableOp9quant_dense/MovingAvgQuantize/AssignMinEma/ReadVariableOp2?
Dquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpDquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Fquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Fquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12L
$quant_dense_1/BiasAdd/ReadVariableOp$quant_dense_1/BiasAdd/ReadVariableOp2X
*quant_dense_1/LastValueQuant/AssignMaxLast*quant_dense_1/LastValueQuant/AssignMaxLast2X
*quant_dense_1/LastValueQuant/AssignMinLast*quant_dense_1/LastValueQuant/AssignMinLast2l
4quant_dense_1/LastValueQuant/BatchMax/ReadVariableOp4quant_dense_1/LastValueQuant/BatchMax/ReadVariableOp2l
4quant_dense_1/LastValueQuant/BatchMin/ReadVariableOp4quant_dense_1/LastValueQuant/BatchMin/ReadVariableOp2?
Cquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpCquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
@quant_dense_1/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp@quant_dense_1/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2z
;quant_dense_1/MovingAvgQuantize/AssignMaxEma/ReadVariableOp;quant_dense_1/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2?
@quant_dense_1/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp@quant_dense_1/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2z
;quant_dense_1/MovingAvgQuantize/AssignMinEma/ReadVariableOp;quant_dense_1/MovingAvgQuantize/AssignMinEma/ReadVariableOp2?
Fquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpFquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Hquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Hquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12L
$quant_dense_2/BiasAdd/ReadVariableOp$quant_dense_2/BiasAdd/ReadVariableOp2X
*quant_dense_2/LastValueQuant/AssignMaxLast*quant_dense_2/LastValueQuant/AssignMaxLast2X
*quant_dense_2/LastValueQuant/AssignMinLast*quant_dense_2/LastValueQuant/AssignMinLast2l
4quant_dense_2/LastValueQuant/BatchMax/ReadVariableOp4quant_dense_2/LastValueQuant/BatchMax/ReadVariableOp2l
4quant_dense_2/LastValueQuant/BatchMin/ReadVariableOp4quant_dense_2/LastValueQuant/BatchMin/ReadVariableOp2?
Cquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpCquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
@quant_dense_2/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp@quant_dense_2/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2z
;quant_dense_2/MovingAvgQuantize/AssignMaxEma/ReadVariableOp;quant_dense_2/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2?
@quant_dense_2/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp@quant_dense_2/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2z
;quant_dense_2/MovingAvgQuantize/AssignMinEma/ReadVariableOp;quant_dense_2/MovingAvgQuantize/AssignMinEma/ReadVariableOp2?
Fquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpFquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Hquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Hquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12L
$quant_dense_3/BiasAdd/ReadVariableOp$quant_dense_3/BiasAdd/ReadVariableOp2X
*quant_dense_3/LastValueQuant/AssignMaxLast*quant_dense_3/LastValueQuant/AssignMaxLast2X
*quant_dense_3/LastValueQuant/AssignMinLast*quant_dense_3/LastValueQuant/AssignMinLast2l
4quant_dense_3/LastValueQuant/BatchMax/ReadVariableOp4quant_dense_3/LastValueQuant/BatchMax/ReadVariableOp2l
4quant_dense_3/LastValueQuant/BatchMin/ReadVariableOp4quant_dense_3/LastValueQuant/BatchMin/ReadVariableOp2?
Cquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpCquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
@quant_dense_3/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp@quant_dense_3/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2z
;quant_dense_3/MovingAvgQuantize/AssignMaxEma/ReadVariableOp;quant_dense_3/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2?
@quant_dense_3/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp@quant_dense_3/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2z
;quant_dense_3/MovingAvgQuantize/AssignMinEma/ReadVariableOp;quant_dense_3/MovingAvgQuantize/AssignMinEma/ReadVariableOp2?
Fquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpFquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Hquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Hquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12L
$quant_dense_4/BiasAdd/ReadVariableOp$quant_dense_4/BiasAdd/ReadVariableOp2X
*quant_dense_4/LastValueQuant/AssignMaxLast*quant_dense_4/LastValueQuant/AssignMaxLast2X
*quant_dense_4/LastValueQuant/AssignMinLast*quant_dense_4/LastValueQuant/AssignMinLast2l
4quant_dense_4/LastValueQuant/BatchMax/ReadVariableOp4quant_dense_4/LastValueQuant/BatchMax/ReadVariableOp2l
4quant_dense_4/LastValueQuant/BatchMin/ReadVariableOp4quant_dense_4/LastValueQuant/BatchMin/ReadVariableOp2?
Cquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpCquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
@quant_dense_4/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp@quant_dense_4/MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2z
;quant_dense_4/MovingAvgQuantize/AssignMaxEma/ReadVariableOp;quant_dense_4/MovingAvgQuantize/AssignMaxEma/ReadVariableOp2?
@quant_dense_4/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp@quant_dense_4/MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2z
;quant_dense_4/MovingAvgQuantize/AssignMinEma/ReadVariableOp;quant_dense_4/MovingAvgQuantize/AssignMinEma/ReadVariableOp2?
Fquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpFquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Hquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Hquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12l
4quantize_layer_1/AllValuesQuantize/AssignMaxAllValue4quantize_layer_1/AllValuesQuantize/AssignMaxAllValue2l
4quantize_layer_1/AllValuesQuantize/AssignMinAllValue4quantize_layer_1/AllValuesQuantize/AssignMinAllValue2?
Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpIquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12v
9quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp9quantize_layer_1/AllValuesQuantize/Maximum/ReadVariableOp2v
9quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp9quantize_layer_1/AllValuesQuantize/Minimum/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs

?)
"__inference__traced_restore_942114
file_prefix@
6assignvariableop_quantize_layer_1_quantize_layer_1_min: B
8assignvariableop_1_quantize_layer_1_quantize_layer_1_max: <
2assignvariableop_2_quantize_layer_1_optimizer_step: 7
-assignvariableop_3_quant_dense_optimizer_step: 3
)assignvariableop_4_quant_dense_kernel_min: 3
)assignvariableop_5_quant_dense_kernel_max: <
2assignvariableop_6_quant_dense_post_activation_min: <
2assignvariableop_7_quant_dense_post_activation_max: 9
/assignvariableop_8_quant_dense_1_optimizer_step: 5
+assignvariableop_9_quant_dense_1_kernel_min: 6
,assignvariableop_10_quant_dense_1_kernel_max: ?
5assignvariableop_11_quant_dense_1_post_activation_min: ?
5assignvariableop_12_quant_dense_1_post_activation_max: :
0assignvariableop_13_quant_dense_2_optimizer_step: 6
,assignvariableop_14_quant_dense_2_kernel_min: 6
,assignvariableop_15_quant_dense_2_kernel_max: ?
5assignvariableop_16_quant_dense_2_post_activation_min: ?
5assignvariableop_17_quant_dense_2_post_activation_max: :
0assignvariableop_18_quant_dense_3_optimizer_step: 6
,assignvariableop_19_quant_dense_3_kernel_min: 6
,assignvariableop_20_quant_dense_3_kernel_max: ?
5assignvariableop_21_quant_dense_3_post_activation_min: ?
5assignvariableop_22_quant_dense_3_post_activation_max: :
0assignvariableop_23_quant_dropout_optimizer_step: :
0assignvariableop_24_quant_dense_4_optimizer_step: 6
,assignvariableop_25_quant_dense_4_kernel_min: 6
,assignvariableop_26_quant_dense_4_kernel_max: >
4assignvariableop_27_quant_dense_4_pre_activation_min: >
4assignvariableop_28_quant_dense_4_pre_activation_max: '
assignvariableop_29_adam_iter:	 )
assignvariableop_30_adam_beta_1: )
assignvariableop_31_adam_beta_2: (
assignvariableop_32_adam_decay: 0
&assignvariableop_33_adam_learning_rate: ,
assignvariableop_34_dense_bias: 2
 assignvariableop_35_dense_kernel: .
 assignvariableop_36_dense_1_bias:@4
"assignvariableop_37_dense_1_kernel: @/
 assignvariableop_38_dense_2_bias:	?5
"assignvariableop_39_dense_2_kernel:	@?.
 assignvariableop_40_dense_3_bias:@5
"assignvariableop_41_dense_3_kernel:	?@.
 assignvariableop_42_dense_4_bias:4
"assignvariableop_43_dense_4_kernel:@#
assignvariableop_44_total: #
assignvariableop_45_count: %
assignvariableop_46_total_1: %
assignvariableop_47_count_1: 3
%assignvariableop_48_adam_dense_bias_m: 9
'assignvariableop_49_adam_dense_kernel_m: 5
'assignvariableop_50_adam_dense_1_bias_m:@;
)assignvariableop_51_adam_dense_1_kernel_m: @6
'assignvariableop_52_adam_dense_2_bias_m:	?<
)assignvariableop_53_adam_dense_2_kernel_m:	@?5
'assignvariableop_54_adam_dense_3_bias_m:@<
)assignvariableop_55_adam_dense_3_kernel_m:	?@5
'assignvariableop_56_adam_dense_4_bias_m:;
)assignvariableop_57_adam_dense_4_kernel_m:@3
%assignvariableop_58_adam_dense_bias_v: 9
'assignvariableop_59_adam_dense_kernel_v: 5
'assignvariableop_60_adam_dense_1_bias_v:@;
)assignvariableop_61_adam_dense_1_kernel_v: @6
'assignvariableop_62_adam_dense_2_bias_v:	?<
)assignvariableop_63_adam_dense_2_kernel_v:	@?5
'assignvariableop_64_adam_dense_3_bias_v:@<
)assignvariableop_65_adam_dense_3_kernel_v:	?@5
'assignvariableop_66_adam_dense_4_bias_v:;
)assignvariableop_67_adam_dense_4_kernel_v:@
identity_69??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*? 
value? B? EBDlayer_with_weights-0/quantize_layer_1_min/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-0/quantize_layer_1_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-5/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-6/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-6/pre_activation_min/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-6/pre_activation_max/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*?
value?B?EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*S
dtypesI
G2E	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp6assignvariableop_quantize_layer_1_quantize_layer_1_minIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp8assignvariableop_1_quantize_layer_1_quantize_layer_1_maxIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp2assignvariableop_2_quantize_layer_1_optimizer_stepIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp-assignvariableop_3_quant_dense_optimizer_stepIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp)assignvariableop_4_quant_dense_kernel_minIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp)assignvariableop_5_quant_dense_kernel_maxIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp2assignvariableop_6_quant_dense_post_activation_minIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp2assignvariableop_7_quant_dense_post_activation_maxIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp/assignvariableop_8_quant_dense_1_optimizer_stepIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp+assignvariableop_9_quant_dense_1_kernel_minIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp,assignvariableop_10_quant_dense_1_kernel_maxIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp5assignvariableop_11_quant_dense_1_post_activation_minIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp5assignvariableop_12_quant_dense_1_post_activation_maxIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp0assignvariableop_13_quant_dense_2_optimizer_stepIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp,assignvariableop_14_quant_dense_2_kernel_minIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp,assignvariableop_15_quant_dense_2_kernel_maxIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp5assignvariableop_16_quant_dense_2_post_activation_minIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp5assignvariableop_17_quant_dense_2_post_activation_maxIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp0assignvariableop_18_quant_dense_3_optimizer_stepIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp,assignvariableop_19_quant_dense_3_kernel_minIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp,assignvariableop_20_quant_dense_3_kernel_maxIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp5assignvariableop_21_quant_dense_3_post_activation_minIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp5assignvariableop_22_quant_dense_3_post_activation_maxIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp0assignvariableop_23_quant_dropout_optimizer_stepIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp0assignvariableop_24_quant_dense_4_optimizer_stepIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp,assignvariableop_25_quant_dense_4_kernel_minIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp,assignvariableop_26_quant_dense_4_kernel_maxIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_quant_dense_4_pre_activation_minIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp4assignvariableop_28_quant_dense_4_pre_activation_maxIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_iterIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_beta_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_beta_2Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_decayIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp&assignvariableop_33_adam_learning_rateIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpassignvariableop_34_dense_biasIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp assignvariableop_35_dense_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp assignvariableop_36_dense_1_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp"assignvariableop_37_dense_1_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp assignvariableop_38_dense_2_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp"assignvariableop_39_dense_2_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp assignvariableop_40_dense_3_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp"assignvariableop_41_dense_3_kernelIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp assignvariableop_42_dense_4_biasIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp"assignvariableop_43_dense_4_kernelIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpassignvariableop_44_totalIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOpassignvariableop_45_countIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOpassignvariableop_46_total_1Identity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOpassignvariableop_47_count_1Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp%assignvariableop_48_adam_dense_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_dense_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_1_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_1_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_2_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_dense_2_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp'assignvariableop_54_adam_dense_3_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_3_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_4_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_4_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp%assignvariableop_58_adam_dense_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dense_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp'assignvariableop_60_adam_dense_1_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_dense_1_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_dense_2_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp)assignvariableop_63_adam_dense_2_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp'assignvariableop_64_adam_dense_3_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp)assignvariableop_65_adam_dense_3_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp'assignvariableop_66_adam_dense_4_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_dense_4_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_679
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_68Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_68?
Identity_69IdentityIdentity_68:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_69"#
identity_69Identity_69:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_67AssignVariableOp_672(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
.__inference_quant_dense_2_layer_call_fn_941344

inputs
unknown:	@?
	unknown_0: 
	unknown_1: 
	unknown_2:	?
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_9397632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?b
?
G__inference_quant_dense_layer_call_and_return_conditional_losses_939947

inputs=
+lastvaluequant_rank_readvariableop_resource: /
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource: @
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: *
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: *
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:????????? 2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_quant_dense_2_layer_call_fn_941327

inputs
unknown:	@?
	unknown_0: 
	unknown_1: 
	unknown_2:	?
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_9393202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
J
.__inference_quant_dropout_layer_call_fn_941539

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dropout_layer_call_and_return_conditional_losses_9393742
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
g
I__inference_quant_dropout_layer_call_and_return_conditional_losses_939374

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_quant_dense_1_layer_call_fn_941215

inputs
unknown: @
	unknown_0: 
	unknown_1: 
	unknown_2:@
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_9392852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?&
?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_939995

inputs;
1allvaluesquantize_minimum_readvariableop_resource: ;
1allvaluesquantize_maximum_readvariableop_resource: 
identity??#AllValuesQuantize/AssignMaxAllValue?#AllValuesQuantize/AssignMinAllValue?8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?(AllValuesQuantize/Maximum/ReadVariableOp?(AllValuesQuantize/Minimum/ReadVariableOp?
AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
AllValuesQuantize/Const?
AllValuesQuantize/BatchMinMininputs AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMin?
AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
AllValuesQuantize/Const_1?
AllValuesQuantize/BatchMaxMaxinputs"AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMax?
(AllValuesQuantize/Minimum/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Minimum/ReadVariableOp?
AllValuesQuantize/MinimumMinimum0AllValuesQuantize/Minimum/ReadVariableOp:value:0#AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum?
AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Minimum_1/y?
AllValuesQuantize/Minimum_1MinimumAllValuesQuantize/Minimum:z:0&AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum_1?
(AllValuesQuantize/Maximum/ReadVariableOpReadVariableOp1allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Maximum/ReadVariableOp?
AllValuesQuantize/MaximumMaximum0AllValuesQuantize/Maximum/ReadVariableOp:value:0#AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum?
AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Maximum_1/y?
AllValuesQuantize/Maximum_1MaximumAllValuesQuantize/Maximum:z:0&AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum_1?
#AllValuesQuantize/AssignMinAllValueAssignVariableOp1allvaluesquantize_minimum_readvariableop_resourceAllValuesQuantize/Minimum_1:z:0)^AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMinAllValue?
#AllValuesQuantize/AssignMaxAllValueAssignVariableOp1allvaluesquantize_maximum_readvariableop_resourceAllValuesQuantize/Maximum_1:z:0)^AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMaxAllValue?
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource$^AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp1allvaluesquantize_maximum_readvariableop_resource$^AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????2+
)AllValuesQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0$^AllValuesQuantize/AssignMaxAllValue$^AllValuesQuantize/AssignMinAllValue9^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1)^AllValuesQuantize/Maximum/ReadVariableOp)^AllValuesQuantize/Minimum/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2J
#AllValuesQuantize/AssignMaxAllValue#AllValuesQuantize/AssignMaxAllValue2J
#AllValuesQuantize/AssignMinAllValue#AllValuesQuantize/AssignMinAllValue2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12T
(AllValuesQuantize/Maximum/ReadVariableOp(AllValuesQuantize/Maximum/ReadVariableOp2T
(AllValuesQuantize/Minimum/ReadVariableOp(AllValuesQuantize/Minimum/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
I__inference_quant_dropout_layer_call_and_return_conditional_losses_941549

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_941065

inputsK
Aallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: M
Callvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCallvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????2+
)AllValuesQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:09^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_939223

inputsK
Aallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: M
Callvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpAallvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpCallvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????2+
)AllValuesQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:09^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?&
?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_941086

inputs;
1allvaluesquantize_minimum_readvariableop_resource: ;
1allvaluesquantize_maximum_readvariableop_resource: 
identity??#AllValuesQuantize/AssignMaxAllValue?#AllValuesQuantize/AssignMinAllValue?8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?(AllValuesQuantize/Maximum/ReadVariableOp?(AllValuesQuantize/Minimum/ReadVariableOp?
AllValuesQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
AllValuesQuantize/Const?
AllValuesQuantize/BatchMinMininputs AllValuesQuantize/Const:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMin?
AllValuesQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
AllValuesQuantize/Const_1?
AllValuesQuantize/BatchMaxMaxinputs"AllValuesQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/BatchMax?
(AllValuesQuantize/Minimum/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Minimum/ReadVariableOp?
AllValuesQuantize/MinimumMinimum0AllValuesQuantize/Minimum/ReadVariableOp:value:0#AllValuesQuantize/BatchMin:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum?
AllValuesQuantize/Minimum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Minimum_1/y?
AllValuesQuantize/Minimum_1MinimumAllValuesQuantize/Minimum:z:0&AllValuesQuantize/Minimum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Minimum_1?
(AllValuesQuantize/Maximum/ReadVariableOpReadVariableOp1allvaluesquantize_maximum_readvariableop_resource*
_output_shapes
: *
dtype02*
(AllValuesQuantize/Maximum/ReadVariableOp?
AllValuesQuantize/MaximumMaximum0AllValuesQuantize/Maximum/ReadVariableOp:value:0#AllValuesQuantize/BatchMax:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum?
AllValuesQuantize/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
AllValuesQuantize/Maximum_1/y?
AllValuesQuantize/Maximum_1MaximumAllValuesQuantize/Maximum:z:0&AllValuesQuantize/Maximum_1/y:output:0*
T0*
_output_shapes
: 2
AllValuesQuantize/Maximum_1?
#AllValuesQuantize/AssignMinAllValueAssignVariableOp1allvaluesquantize_minimum_readvariableop_resourceAllValuesQuantize/Minimum_1:z:0)^AllValuesQuantize/Minimum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMinAllValue?
#AllValuesQuantize/AssignMaxAllValueAssignVariableOp1allvaluesquantize_maximum_readvariableop_resourceAllValuesQuantize/Maximum_1:z:0)^AllValuesQuantize/Maximum/ReadVariableOp*
_output_shapes
 *
dtype02%
#AllValuesQuantize/AssignMaxAllValue?
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp1allvaluesquantize_minimum_readvariableop_resource$^AllValuesQuantize/AssignMinAllValue*
_output_shapes
: *
dtype02:
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp1allvaluesquantize_maximum_readvariableop_resource$^AllValuesQuantize/AssignMaxAllValue*
_output_shapes
: *
dtype02<
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputs@AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BAllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????2+
)AllValuesQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0$^AllValuesQuantize/AssignMaxAllValue$^AllValuesQuantize/AssignMinAllValue9^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1)^AllValuesQuantize/Maximum/ReadVariableOp)^AllValuesQuantize/Minimum/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2J
#AllValuesQuantize/AssignMaxAllValue#AllValuesQuantize/AssignMaxAllValue2J
#AllValuesQuantize/AssignMinAllValue#AllValuesQuantize/AssignMinAllValue2t
8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12T
(AllValuesQuantize/Maximum/ReadVariableOp(AllValuesQuantize/Maximum/ReadVariableOp2T
(AllValuesQuantize/Minimum/ReadVariableOp(AllValuesQuantize/Minimum/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?0
?
F__inference_sequential_layer_call_and_return_conditional_losses_940359
dense_input!
quantize_layer_1_940287: !
quantize_layer_1_940289: $
quant_dense_940292: 
quant_dense_940294: 
quant_dense_940296:  
quant_dense_940298: 
quant_dense_940300: 
quant_dense_940302: &
quant_dense_1_940305: @
quant_dense_1_940307: 
quant_dense_1_940309: "
quant_dense_1_940311:@
quant_dense_1_940313: 
quant_dense_1_940315: '
quant_dense_2_940318:	@?
quant_dense_2_940320: 
quant_dense_2_940322: #
quant_dense_2_940324:	?
quant_dense_2_940326: 
quant_dense_2_940328: '
quant_dense_3_940331:	?@
quant_dense_3_940333: 
quant_dense_3_940335: "
quant_dense_3_940337:@
quant_dense_3_940339: 
quant_dense_3_940341: &
quant_dense_4_940345:@
quant_dense_4_940347: 
quant_dense_4_940349: "
quant_dense_4_940351:
quant_dense_4_940353: 
quant_dense_4_940355: 
identity??#quant_dense/StatefulPartitionedCall?%quant_dense_1/StatefulPartitionedCall?%quant_dense_2/StatefulPartitionedCall?%quant_dense_3/StatefulPartitionedCall?%quant_dense_4/StatefulPartitionedCall?(quantize_layer_1/StatefulPartitionedCall?
(quantize_layer_1/StatefulPartitionedCallStatefulPartitionedCalldense_inputquantize_layer_1_940287quantize_layer_1_940289*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_9392232*
(quantize_layer_1/StatefulPartitionedCall?
#quant_dense/StatefulPartitionedCallStatefulPartitionedCall1quantize_layer_1/StatefulPartitionedCall:output:0quant_dense_940292quant_dense_940294quant_dense_940296quant_dense_940298quant_dense_940300quant_dense_940302*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_quant_dense_layer_call_and_return_conditional_losses_9392502%
#quant_dense/StatefulPartitionedCall?
%quant_dense_1/StatefulPartitionedCallStatefulPartitionedCall,quant_dense/StatefulPartitionedCall:output:0quant_dense_1_940305quant_dense_1_940307quant_dense_1_940309quant_dense_1_940311quant_dense_1_940313quant_dense_1_940315*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_9392852'
%quant_dense_1/StatefulPartitionedCall?
%quant_dense_2/StatefulPartitionedCallStatefulPartitionedCall.quant_dense_1/StatefulPartitionedCall:output:0quant_dense_2_940318quant_dense_2_940320quant_dense_2_940322quant_dense_2_940324quant_dense_2_940326quant_dense_2_940328*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_9393202'
%quant_dense_2/StatefulPartitionedCall?
%quant_dense_3/StatefulPartitionedCallStatefulPartitionedCall.quant_dense_2/StatefulPartitionedCall:output:0quant_dense_3_940331quant_dense_3_940333quant_dense_3_940335quant_dense_3_940337quant_dense_3_940339quant_dense_3_940341*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_9393552'
%quant_dense_3/StatefulPartitionedCall?
quant_dropout/PartitionedCallPartitionedCall.quant_dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dropout_layer_call_and_return_conditional_losses_9393742
quant_dropout/PartitionedCall?
%quant_dense_4/StatefulPartitionedCallStatefulPartitionedCall&quant_dropout/PartitionedCall:output:0quant_dense_4_940345quant_dense_4_940347quant_dense_4_940349quant_dense_4_940351quant_dense_4_940353quant_dense_4_940355*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_9393972'
%quant_dense_4/StatefulPartitionedCall?
IdentityIdentity.quant_dense_4/StatefulPartitionedCall:output:0$^quant_dense/StatefulPartitionedCall&^quant_dense_1/StatefulPartitionedCall&^quant_dense_2/StatefulPartitionedCall&^quant_dense_3/StatefulPartitionedCall&^quant_dense_4/StatefulPartitionedCall)^quantize_layer_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#quant_dense/StatefulPartitionedCall#quant_dense/StatefulPartitionedCall2N
%quant_dense_1/StatefulPartitionedCall%quant_dense_1/StatefulPartitionedCall2N
%quant_dense_2/StatefulPartitionedCall%quant_dense_2/StatefulPartitionedCall2N
%quant_dense_3/StatefulPartitionedCall%quant_dense_3/StatefulPartitionedCall2N
%quant_dense_4/StatefulPartitionedCall%quant_dense_4/StatefulPartitionedCall2T
(quantize_layer_1/StatefulPartitionedCall(quantize_layer_1/StatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_namedense_input
??
?'
F__inference_sequential_layer_call_and_return_conditional_losses_940744

inputs\
Rquantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource: ^
Tquantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource: \
Jquant_dense_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource: V
Lquant_dense_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: V
Lquant_dense_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: 9
+quant_dense_biasadd_readvariableop_resource: W
Mquant_dense_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: Y
Oquant_dense_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: ^
Lquant_dense_1_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource: @X
Nquant_dense_1_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: X
Nquant_dense_1_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: ;
-quant_dense_1_biasadd_readvariableop_resource:@Y
Oquant_dense_1_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: [
Qquant_dense_1_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: _
Lquant_dense_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	@?X
Nquant_dense_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: X
Nquant_dense_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: <
-quant_dense_2_biasadd_readvariableop_resource:	?Y
Oquant_dense_2_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: [
Qquant_dense_2_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: _
Lquant_dense_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:	?@X
Nquant_dense_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: X
Nquant_dense_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: ;
-quant_dense_3_biasadd_readvariableop_resource:@Y
Oquant_dense_3_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: [
Qquant_dense_3_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: ^
Lquant_dense_4_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource:@X
Nquant_dense_4_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource: X
Nquant_dense_4_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource: ;
-quant_dense_4_biasadd_readvariableop_resource:Y
Oquant_dense_4_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource: [
Qquant_dense_4_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource: 
identity??"quant_dense/BiasAdd/ReadVariableOp?Aquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Dquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Fquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?$quant_dense_1/BiasAdd/ReadVariableOp?Cquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Fquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Hquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?$quant_dense_2/BiasAdd/ReadVariableOp?Cquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Fquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Hquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?$quant_dense_3/BiasAdd/ReadVariableOp?Cquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Fquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Hquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?$quant_dense_4/BiasAdd/ReadVariableOp?Cquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?Fquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Hquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpRquantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02K
Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpTquantize_layer_1_allvaluesquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02M
Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
:quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsinputsQquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Squantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????2<
:quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars?
Aquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpJquant_dense_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

: *
dtype02C
Aquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpLquant_dense_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02E
Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpLquant_dense_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02E
Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
2quant_dense/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsIquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Kquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Kquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: *
narrow_range(24
2quant_dense/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense/MatMulMatMulDquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars:outputs:0<quant_dense/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:????????? 2
quant_dense/MatMul?
"quant_dense/BiasAdd/ReadVariableOpReadVariableOp+quant_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02$
"quant_dense/BiasAdd/ReadVariableOp?
quant_dense/BiasAddBiasAddquant_dense/MatMul:product:0*quant_dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
quant_dense/BiasAdd|
quant_dense/ReluReluquant_dense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
quant_dense/Relu?
Dquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpMquant_dense_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02F
Dquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Fquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpOquant_dense_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02H
Fquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
5quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsquant_dense/Relu:activations:0Lquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Nquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:????????? 27
5quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars?
Cquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpLquant_dense_1_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

: @*
dtype02E
Cquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpNquant_dense_1_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02G
Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpNquant_dense_1_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02G
Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
4quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsKquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Mquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Mquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: @*
narrow_range(26
4quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_1/MatMulMatMul?quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0>quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
quant_dense_1/MatMul?
$quant_dense_1/BiasAdd/ReadVariableOpReadVariableOp-quant_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$quant_dense_1/BiasAdd/ReadVariableOp?
quant_dense_1/BiasAddBiasAddquant_dense_1/MatMul:product:0,quant_dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
quant_dense_1/BiasAdd?
quant_dense_1/ReluReluquant_dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
quant_dense_1/Relu?
Fquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpOquant_dense_1_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02H
Fquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Hquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpQquant_dense_1_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02J
Hquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars quant_dense_1/Relu:activations:0Nquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Pquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@29
7quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars?
Cquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpLquant_dense_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	@?*
dtype02E
Cquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpNquant_dense_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02G
Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpNquant_dense_2_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02G
Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
4quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsKquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Mquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Mquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	@?*
narrow_range(26
4quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_2/MatMulMatMulAquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0>quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*(
_output_shapes
:??????????2
quant_dense_2/MatMul?
$quant_dense_2/BiasAdd/ReadVariableOpReadVariableOp-quant_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$quant_dense_2/BiasAdd/ReadVariableOp?
quant_dense_2/BiasAddBiasAddquant_dense_2/MatMul:product:0,quant_dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
quant_dense_2/BiasAdd?
quant_dense_2/ReluReluquant_dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
quant_dense_2/Relu?
Fquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpOquant_dense_2_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02H
Fquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Hquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpQquant_dense_2_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02J
Hquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars quant_dense_2/Relu:activations:0Nquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Pquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*(
_output_shapes
:??????????29
7quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars?
Cquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpLquant_dense_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
:	?@*
dtype02E
Cquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpNquant_dense_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02G
Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpNquant_dense_3_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02G
Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
4quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsKquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Mquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Mquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	?@*
narrow_range(26
4quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_3/MatMulMatMulAquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0>quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
quant_dense_3/MatMul?
$quant_dense_3/BiasAdd/ReadVariableOpReadVariableOp-quant_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$quant_dense_3/BiasAdd/ReadVariableOp?
quant_dense_3/BiasAddBiasAddquant_dense_3/MatMul:product:0,quant_dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
quant_dense_3/BiasAdd?
quant_dense_3/ReluReluquant_dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
quant_dense_3/Relu?
Fquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpOquant_dense_3_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02H
Fquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Hquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpQquant_dense_3_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02J
Hquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars quant_dense_3/Relu:activations:0Nquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Pquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@29
7quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars?
quant_dropout/IdentityIdentityAquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
quant_dropout/Identity?
Cquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpLquant_dense_4_lastvaluequant_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes

:@*
dtype02E
Cquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpNquant_dense_4_lastvaluequant_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02G
Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOpNquant_dense_4_lastvaluequant_fakequantwithminmaxvars_readvariableop_2_resource*
_output_shapes
: *
dtype02G
Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
4quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsKquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Mquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0Mquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

:@*
narrow_range(26
4quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars?
quant_dense_4/MatMulMatMulquant_dropout/Identity:output:0>quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2
quant_dense_4/MatMul?
$quant_dense_4/BiasAdd/ReadVariableOpReadVariableOp-quant_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$quant_dense_4/BiasAdd/ReadVariableOp?
quant_dense_4/BiasAddBiasAddquant_dense_4/MatMul:product:0,quant_dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
quant_dense_4/BiasAdd?
Fquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOpOquant_dense_4_movingavgquantize_fakequantwithminmaxvars_readvariableop_resource*
_output_shapes
: *
dtype02H
Fquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
Hquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOpQquant_dense_4_movingavgquantize_fakequantwithminmaxvars_readvariableop_1_resource*
_output_shapes
: *
dtype02J
Hquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsquant_dense_4/BiasAdd:output:0Nquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0Pquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????29
7quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars?
quant_dense_4/SoftmaxSoftmaxAquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????2
quant_dense_4/Softmax?
IdentityIdentityquant_dense_4/Softmax:softmax:0#^quant_dense/BiasAdd/ReadVariableOpB^quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpD^quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1D^quant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2E^quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpG^quant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1%^quant_dense_1/BiasAdd/ReadVariableOpD^quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpF^quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1F^quant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2G^quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpI^quant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1%^quant_dense_2/BiasAdd/ReadVariableOpD^quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpF^quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1F^quant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2G^quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpI^quant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1%^quant_dense_3/BiasAdd/ReadVariableOpD^quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpF^quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1F^quant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2G^quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpI^quant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1%^quant_dense_4/BiasAdd/ReadVariableOpD^quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpF^quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1F^quant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2G^quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpI^quant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1J^quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpL^quantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"quant_dense/BiasAdd/ReadVariableOp"quant_dense/BiasAdd/ReadVariableOp2?
Aquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpAquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Cquant_dense/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Dquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpDquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Fquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Fquant_dense/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12L
$quant_dense_1/BiasAdd/ReadVariableOp$quant_dense_1/BiasAdd/ReadVariableOp2?
Cquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpCquant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Equant_dense_1/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Fquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpFquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Hquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Hquant_dense_1/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12L
$quant_dense_2/BiasAdd/ReadVariableOp$quant_dense_2/BiasAdd/ReadVariableOp2?
Cquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpCquant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Equant_dense_2/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Fquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpFquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Hquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Hquant_dense_2/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12L
$quant_dense_3/BiasAdd/ReadVariableOp$quant_dense_3/BiasAdd/ReadVariableOp2?
Cquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpCquant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Equant_dense_3/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Fquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpFquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Hquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Hquant_dense_3/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12L
$quant_dense_4/BiasAdd/ReadVariableOp$quant_dense_4/BiasAdd/ReadVariableOp2?
Cquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpCquant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2?
Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2Equant_dense_4/LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22?
Fquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpFquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Hquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Hquant_dense_4/MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_12?
Iquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOpIquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2?
Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1Kquantize_layer_1/AllValuesQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__traced_save_941900
file_prefixD
@savev2_quantize_layer_1_quantize_layer_1_min_read_readvariableopD
@savev2_quantize_layer_1_quantize_layer_1_max_read_readvariableop>
:savev2_quantize_layer_1_optimizer_step_read_readvariableop9
5savev2_quant_dense_optimizer_step_read_readvariableop5
1savev2_quant_dense_kernel_min_read_readvariableop5
1savev2_quant_dense_kernel_max_read_readvariableop>
:savev2_quant_dense_post_activation_min_read_readvariableop>
:savev2_quant_dense_post_activation_max_read_readvariableop;
7savev2_quant_dense_1_optimizer_step_read_readvariableop7
3savev2_quant_dense_1_kernel_min_read_readvariableop7
3savev2_quant_dense_1_kernel_max_read_readvariableop@
<savev2_quant_dense_1_post_activation_min_read_readvariableop@
<savev2_quant_dense_1_post_activation_max_read_readvariableop;
7savev2_quant_dense_2_optimizer_step_read_readvariableop7
3savev2_quant_dense_2_kernel_min_read_readvariableop7
3savev2_quant_dense_2_kernel_max_read_readvariableop@
<savev2_quant_dense_2_post_activation_min_read_readvariableop@
<savev2_quant_dense_2_post_activation_max_read_readvariableop;
7savev2_quant_dense_3_optimizer_step_read_readvariableop7
3savev2_quant_dense_3_kernel_min_read_readvariableop7
3savev2_quant_dense_3_kernel_max_read_readvariableop@
<savev2_quant_dense_3_post_activation_min_read_readvariableop@
<savev2_quant_dense_3_post_activation_max_read_readvariableop;
7savev2_quant_dropout_optimizer_step_read_readvariableop;
7savev2_quant_dense_4_optimizer_step_read_readvariableop7
3savev2_quant_dense_4_kernel_min_read_readvariableop7
3savev2_quant_dense_4_kernel_max_read_readvariableop?
;savev2_quant_dense_4_pre_activation_min_read_readvariableop?
;savev2_quant_dense_4_pre_activation_max_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop)
%savev2_dense_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*? 
value? B? EBDlayer_with_weights-0/quantize_layer_1_min/.ATTRIBUTES/VARIABLE_VALUEBDlayer_with_weights-0/quantize_layer_1_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-1/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-1/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-2/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-2/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-3/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-3/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-4/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_min/.ATTRIBUTES/VARIABLE_VALUEBClayer_with_weights-4/post_activation_max/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-5/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-6/optimizer_step/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/kernel_min/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/kernel_max/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-6/pre_activation_min/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-6/pre_activation_max/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*?
value?B?EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0@savev2_quantize_layer_1_quantize_layer_1_min_read_readvariableop@savev2_quantize_layer_1_quantize_layer_1_max_read_readvariableop:savev2_quantize_layer_1_optimizer_step_read_readvariableop5savev2_quant_dense_optimizer_step_read_readvariableop1savev2_quant_dense_kernel_min_read_readvariableop1savev2_quant_dense_kernel_max_read_readvariableop:savev2_quant_dense_post_activation_min_read_readvariableop:savev2_quant_dense_post_activation_max_read_readvariableop7savev2_quant_dense_1_optimizer_step_read_readvariableop3savev2_quant_dense_1_kernel_min_read_readvariableop3savev2_quant_dense_1_kernel_max_read_readvariableop<savev2_quant_dense_1_post_activation_min_read_readvariableop<savev2_quant_dense_1_post_activation_max_read_readvariableop7savev2_quant_dense_2_optimizer_step_read_readvariableop3savev2_quant_dense_2_kernel_min_read_readvariableop3savev2_quant_dense_2_kernel_max_read_readvariableop<savev2_quant_dense_2_post_activation_min_read_readvariableop<savev2_quant_dense_2_post_activation_max_read_readvariableop7savev2_quant_dense_3_optimizer_step_read_readvariableop3savev2_quant_dense_3_kernel_min_read_readvariableop3savev2_quant_dense_3_kernel_max_read_readvariableop<savev2_quant_dense_3_post_activation_min_read_readvariableop<savev2_quant_dense_3_post_activation_max_read_readvariableop7savev2_quant_dropout_optimizer_step_read_readvariableop7savev2_quant_dense_4_optimizer_step_read_readvariableop3savev2_quant_dense_4_kernel_min_read_readvariableop3savev2_quant_dense_4_kernel_max_read_readvariableop;savev2_quant_dense_4_pre_activation_min_read_readvariableop;savev2_quant_dense_4_pre_activation_max_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop%savev2_dense_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *S
dtypesI
G2E	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :@: @:?:	@?:@:	?@::@: : : : : : :@: @:?:	@?:@:	?@::@: : :@: @:?:	@?:@:	?@::@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: : #

_output_shapes
: :$$ 

_output_shapes

: : %

_output_shapes
:@:$& 

_output_shapes

: @:!'

_output_shapes	
:?:%(!

_output_shapes
:	@?: )

_output_shapes
:@:%*!

_output_shapes
:	?@: +

_output_shapes
::$, 

_output_shapes

:@:-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: : 1

_output_shapes
: :$2 

_output_shapes

: : 3

_output_shapes
:@:$4 

_output_shapes

: @:!5

_output_shapes	
:?:%6!

_output_shapes
:	@?: 7

_output_shapes
:@:%8!

_output_shapes
:	?@: 9

_output_shapes
::$: 

_output_shapes

:@: ;

_output_shapes
: :$< 

_output_shapes

: : =

_output_shapes
:@:$> 

_output_shapes

: @:!?

_output_shapes	
:?:%@!

_output_shapes
:	@?: A

_output_shapes
:@:%B!

_output_shapes
:	?@: C

_output_shapes
::$D 

_output_shapes

:@:E

_output_shapes
: 
?b
?
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_939763

inputs>
+lastvaluequant_rank_readvariableop_resource:	@?/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: .
biasadd_readvariableop_resource:	?@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes
:	@?*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes
:	@?*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*(
_output_shapes
:??????????2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?b
?
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_941310

inputs=
+lastvaluequant_rank_readvariableop_resource: @/
%lastvaluequant_assignminlast_resource: /
%lastvaluequant_assignmaxlast_resource: -
biasadd_readvariableop_resource:@@
6movingavgquantize_assignminema_readvariableop_resource: @
6movingavgquantize_assignmaxema_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?LastValueQuant/AssignMaxLast?LastValueQuant/AssignMinLast?&LastValueQuant/BatchMax/ReadVariableOp?&LastValueQuant/BatchMin/ReadVariableOp?5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?-MovingAvgQuantize/AssignMinEma/ReadVariableOp?8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
"LastValueQuant/Rank/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype02$
"LastValueQuant/Rank/ReadVariableOpl
LastValueQuant/RankConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rankz
LastValueQuant/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range/startz
LastValueQuant/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range/delta?
LastValueQuant/rangeRange#LastValueQuant/range/start:output:0LastValueQuant/Rank:output:0#LastValueQuant/range/delta:output:0*
_output_shapes
:2
LastValueQuant/range?
&LastValueQuant/BatchMin/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype02(
&LastValueQuant/BatchMin/ReadVariableOp?
LastValueQuant/BatchMinMin.LastValueQuant/BatchMin/ReadVariableOp:value:0LastValueQuant/range:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMin?
$LastValueQuant/Rank_1/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype02&
$LastValueQuant/Rank_1/ReadVariableOpp
LastValueQuant/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/Rank_1~
LastValueQuant/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 2
LastValueQuant/range_1/start~
LastValueQuant/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
LastValueQuant/range_1/delta?
LastValueQuant/range_1Range%LastValueQuant/range_1/start:output:0LastValueQuant/Rank_1:output:0%LastValueQuant/range_1/delta:output:0*
_output_shapes
:2
LastValueQuant/range_1?
&LastValueQuant/BatchMax/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype02(
&LastValueQuant/BatchMax/ReadVariableOp?
LastValueQuant/BatchMaxMax.LastValueQuant/BatchMax/ReadVariableOp:value:0LastValueQuant/range_1:output:0*
T0*
_output_shapes
: 2
LastValueQuant/BatchMaxy
LastValueQuant/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/truediv/y?
LastValueQuant/truedivRealDiv LastValueQuant/BatchMax:output:0!LastValueQuant/truediv/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/truediv?
LastValueQuant/MinimumMinimum LastValueQuant/BatchMin:output:0LastValueQuant/truediv:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Minimumq
LastValueQuant/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
LastValueQuant/mul/y?
LastValueQuant/mulMul LastValueQuant/BatchMin:output:0LastValueQuant/mul/y:output:0*
T0*
_output_shapes
: 2
LastValueQuant/mul?
LastValueQuant/MaximumMaximum LastValueQuant/BatchMax:output:0LastValueQuant/mul:z:0*
T0*
_output_shapes
: 2
LastValueQuant/Maximum?
LastValueQuant/AssignMinLastAssignVariableOp%lastvaluequant_assignminlast_resourceLastValueQuant/Minimum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMinLast?
LastValueQuant/AssignMaxLastAssignVariableOp%lastvaluequant_assignmaxlast_resourceLastValueQuant/Maximum:z:0*
_output_shapes
 *
dtype02
LastValueQuant/AssignMaxLast?
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp+lastvaluequant_rank_readvariableop_resource*
_output_shapes

: @*
dtype027
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp%lastvaluequant_assignminlast_resource^LastValueQuant/AssignMinLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1?
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2ReadVariableOp%lastvaluequant_assignmaxlast_resource^LastValueQuant/AssignMaxLast*
_output_shapes
: *
dtype029
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2?
&LastValueQuant/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVars=LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0?LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_2:value:0*
_output_shapes

: @*
narrow_range(2(
&LastValueQuant/FakeQuantWithMinMaxVars?
MatMulMatMulinputs0LastValueQuant/FakeQuantWithMinMaxVars:outputs:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
MovingAvgQuantize/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const?
MovingAvgQuantize/BatchMinMinRelu:activations:0 MovingAvgQuantize/Const:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMin?
MovingAvgQuantize/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       2
MovingAvgQuantize/Const_1?
MovingAvgQuantize/BatchMaxMaxRelu:activations:0"MovingAvgQuantize/Const_1:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/BatchMax
MovingAvgQuantize/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Minimum/y?
MovingAvgQuantize/MinimumMinimum#MovingAvgQuantize/BatchMin:output:0$MovingAvgQuantize/Minimum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Minimum
MovingAvgQuantize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
MovingAvgQuantize/Maximum/y?
MovingAvgQuantize/MaximumMaximum#MovingAvgQuantize/BatchMax:output:0$MovingAvgQuantize/Maximum/y:output:0*
T0*
_output_shapes
: 2
MovingAvgQuantize/Maximum?
$MovingAvgQuantize/AssignMinEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMinEma/decay?
-MovingAvgQuantize/AssignMinEma/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMinEma/ReadVariableOp?
"MovingAvgQuantize/AssignMinEma/subSub5MovingAvgQuantize/AssignMinEma/ReadVariableOp:value:0MovingAvgQuantize/Minimum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/sub?
"MovingAvgQuantize/AssignMinEma/mulMul&MovingAvgQuantize/AssignMinEma/sub:z:0-MovingAvgQuantize/AssignMinEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMinEma/mul?
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignminema_readvariableop_resource&MovingAvgQuantize/AssignMinEma/mul:z:0.^MovingAvgQuantize/AssignMinEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp?
$MovingAvgQuantize/AssignMaxEma/decayConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$MovingAvgQuantize/AssignMaxEma/decay?
-MovingAvgQuantize/AssignMaxEma/ReadVariableOpReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource*
_output_shapes
: *
dtype02/
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp?
"MovingAvgQuantize/AssignMaxEma/subSub5MovingAvgQuantize/AssignMaxEma/ReadVariableOp:value:0MovingAvgQuantize/Maximum:z:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/sub?
"MovingAvgQuantize/AssignMaxEma/mulMul&MovingAvgQuantize/AssignMaxEma/sub:z:0-MovingAvgQuantize/AssignMaxEma/decay:output:0*
T0*
_output_shapes
: 2$
"MovingAvgQuantize/AssignMaxEma/mul?
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOpAssignSubVariableOp6movingavgquantize_assignmaxema_readvariableop_resource&MovingAvgQuantize/AssignMaxEma/mul:z:0.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp*
_output_shapes
 *
dtype024
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp?
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOpReadVariableOp6movingavgquantize_assignminema_readvariableop_resource3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp*
_output_shapes
: *
dtype02:
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp?
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1ReadVariableOp6movingavgquantize_assignmaxema_readvariableop_resource3^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp*
_output_shapes
: *
dtype02<
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1?
)MovingAvgQuantize/FakeQuantWithMinMaxVarsFakeQuantWithMinMaxVarsRelu:activations:0@MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp:value:0BMovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:value:0*'
_output_shapes
:?????????@2+
)MovingAvgQuantize/FakeQuantWithMinMaxVars?
IdentityIdentity3MovingAvgQuantize/FakeQuantWithMinMaxVars:outputs:0^BiasAdd/ReadVariableOp^LastValueQuant/AssignMaxLast^LastValueQuant/AssignMinLast'^LastValueQuant/BatchMax/ReadVariableOp'^LastValueQuant/BatchMin/ReadVariableOp6^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp8^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_18^LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_23^MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMaxEma/ReadVariableOp3^MovingAvgQuantize/AssignMinEma/AssignSubVariableOp.^MovingAvgQuantize/AssignMinEma/ReadVariableOp9^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp;^MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : : : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2<
LastValueQuant/AssignMaxLastLastValueQuant/AssignMaxLast2<
LastValueQuant/AssignMinLastLastValueQuant/AssignMinLast2P
&LastValueQuant/BatchMax/ReadVariableOp&LastValueQuant/BatchMax/ReadVariableOp2P
&LastValueQuant/BatchMin/ReadVariableOp&LastValueQuant/BatchMin/ReadVariableOp2n
5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp5LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp2r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_17LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_12r
7LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_27LastValueQuant/FakeQuantWithMinMaxVars/ReadVariableOp_22h
2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2MovingAvgQuantize/AssignMaxEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMaxEma/ReadVariableOp-MovingAvgQuantize/AssignMaxEma/ReadVariableOp2h
2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2MovingAvgQuantize/AssignMinEma/AssignSubVariableOp2^
-MovingAvgQuantize/AssignMinEma/ReadVariableOp-MovingAvgQuantize/AssignMinEma/ReadVariableOp2t
8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp8MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp2x
:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:MovingAvgQuantize/FakeQuantWithMinMaxVars/ReadVariableOp_1:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
.__inference_quant_dense_3_layer_call_fn_941439

inputs
unknown:	?@
	unknown_0: 
	unknown_1: 
	unknown_2:@
	unknown_3: 
	unknown_4: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_9393552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
dense_input4
serving_default_dense_input:0?????????A
quant_dense_40
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?]
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?Y
_tf_keras_sequential?Y{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 14]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_input"}}, {"class_name": "QuantizeLayer", "config": {"name": "quantize_layer_1", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}}, {"class_name": "QuantizeWrapper", "config": {"name": "quant_dense", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 14]}, "dtype": "float32", "units": 32, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}}, {"class_name": "QuantizeWrapper", "config": {"name": "quant_dense_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}}, {"class_name": "QuantizeWrapper", "config": {"name": "quant_dense_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}}, {"class_name": "QuantizeWrapper", "config": {"name": "quant_dense_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 64, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}}, {"class_name": "QuantizeWrapper", "config": {"name": "quant_dropout", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": [], "activation_attrs": [], "quantize_output": false}}}}, {"class_name": "QuantizeWrapper", "config": {"name": "quant_dense_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 5, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "softmax"}}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}}]}, "shared_object_id": 36, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 14]}, "float32", "dense_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 14]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_input"}, "shared_object_id": 0}, {"class_name": "QuantizeLayer", "config": {"name": "quantize_layer_1", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}, "shared_object_id": 2}, {"class_name": "QuantizeWrapper", "config": {"name": "quant_dense", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 14]}, "dtype": "float32", "units": 32, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 3}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 8}, {"class_name": "QuantizeWrapper", "config": {"name": "quant_dense_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 9}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 14}, {"class_name": "QuantizeWrapper", "config": {"name": "quant_dense_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 15}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 20}, {"class_name": "QuantizeWrapper", "config": {"name": "quant_dense_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 64, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 21}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 26}, {"class_name": "QuantizeWrapper", "config": {"name": "quant_dropout", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 27}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": [], "activation_attrs": [], "quantize_output": false}}}, "shared_object_id": 29}, {"class_name": "QuantizeWrapper", "config": {"name": "quant_dense_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 5, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "softmax"}, "shared_object_id": 30}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 35}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 44}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
quantize_layer_1_min
quantize_layer_1_max
quantizer_vars
optimizer_step
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "quantize_layer_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeLayer", "config": {"name": "quantize_layer_1", "trainable": true, "dtype": "float32", "quantizer": {"class_name": "AllValuesQuantizer", "config": {"num_bits": 8, "per_axis": false, "symmetric": false, "narrow_range": false}}}, "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14]}}
?
	layer
optimizer_step
_weight_vars

kernel_min

kernel_max
_quantize_activations
post_activation_min
post_activation_max
_output_quantizers
	variables
 trainable_variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "quant_dense", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapper", "config": {"name": "quant_dense", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 14]}, "dtype": "float32", "units": 32, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 3}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 8, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14]}}
?
	#layer
$optimizer_step
%_weight_vars
&
kernel_min
'
kernel_max
(_quantize_activations
)post_activation_min
*post_activation_max
+_output_quantizers
,	variables
-trainable_variables
.regularization_losses
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "quant_dense_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapper", "config": {"name": "quant_dense_1", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 9}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 14, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
	0layer
1optimizer_step
2_weight_vars
3
kernel_min
4
kernel_max
5_quantize_activations
6post_activation_min
7post_activation_max
8_output_quantizers
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "quant_dense_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapper", "config": {"name": "quant_dense_2", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 15}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 20, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
	=layer
>optimizer_step
?_weight_vars
@
kernel_min
A
kernel_max
B_quantize_activations
Cpost_activation_min
Dpost_activation_max
E_output_quantizers
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "quant_dense_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapper", "config": {"name": "quant_dense_3", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 64, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 21}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 26, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
	Jlayer
Koptimizer_step
L_weight_vars
M_quantize_activations
N_output_quantizers
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "quant_dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapper", "config": {"name": "quant_dropout", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 27}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": [], "activation_attrs": [], "quantize_output": false}}}, "shared_object_id": 29, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
	Slayer
Toptimizer_step
U_weight_vars
V
kernel_min
W
kernel_max
X_quantize_activations
Ypre_activation_min
Zpre_activation_max
[_output_quantizers
\	variables
]trainable_variables
^regularization_losses
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "quant_dense_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "QuantizeWrapper", "config": {"name": "quant_dense_4", "trainable": true, "dtype": "float32", "layer": {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 5, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "softmax"}, "shared_object_id": 30}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33}, "quantize_config": {"class_name": "Default8BitQuantizeConfig", "config": {"weight_attrs": ["kernel"], "activation_attrs": ["activation"], "quantize_output": false}}}, "shared_object_id": 35, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
`iter

abeta_1

bbeta_2
	cdecay
dlearning_rateem?fm?gm?hm?im?jm?km?lm?mm?nm?ev?fv?gv?hv?iv?jv?kv?lv?mv?nv?"
	optimizer
?
0
1
2
e3
f4
5
6
7
8
9
g10
h11
$12
&13
'14
)15
*16
i17
j18
119
320
421
622
723
k24
l25
>26
@27
A28
C29
D30
K31
m32
n33
T34
V35
W36
Y37
Z38"
trackable_list_wrapper
f
e0
f1
g2
h3
i4
j5
k6
l7
m8
n9"
trackable_list_wrapper
 "
trackable_list_wrapper
?

olayers
		variables
pnon_trainable_variables
qlayer_metrics
rlayer_regularization_losses
smetrics

trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
-:+ 2%quantize_layer_1/quantize_layer_1_min
-:+ 2%quantize_layer_1/quantize_layer_1_max
:
min_var
max_var"
trackable_dict_wrapper
':% 2quantize_layer_1/optimizer_step
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

tlayers
	variables
unon_trainable_variables
vlayer_metrics
wlayer_regularization_losses
xmetrics
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


fkernel
ebias
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 14]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 14]}, "dtype": "float32", "units": 32, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 3}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 14}}, "shared_object_id": 52}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14]}}
":  2quant_dense/optimizer_step
'
}0"
trackable_list_wrapper
: 2quant_dense/kernel_min
: 2quant_dense/kernel_max
 "
trackable_list_wrapper
':% 2quant_dense/post_activation_min
':% 2quant_dense/post_activation_max
 "
trackable_list_wrapper
Q
e0
f1
2
3
4
5
6"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

~layers
	variables
non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
 trainable_variables
!regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

hkernel
gbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 9}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 53}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
$:" 2quant_dense_1/optimizer_step
(
?0"
trackable_list_wrapper
 : 2quant_dense_1/kernel_min
 : 2quant_dense_1/kernel_max
 "
trackable_list_wrapper
):' 2!quant_dense_1/post_activation_min
):' 2!quant_dense_1/post_activation_max
 "
trackable_list_wrapper
Q
g0
h1
$2
&3
'4
)5
*6"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
,	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
-trainable_variables
.regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

jkernel
ibias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 128, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 15}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 54}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
$:" 2quant_dense_2/optimizer_step
(
?0"
trackable_list_wrapper
 : 2quant_dense_2/kernel_min
 : 2quant_dense_2/kernel_max
 "
trackable_list_wrapper
):' 2!quant_dense_2/post_activation_min
):' 2!quant_dense_2/post_activation_max
 "
trackable_list_wrapper
Q
i0
j1
12
33
44
65
76"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
9	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
:trainable_variables
;regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

lkernel
kbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 64, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "relu"}, "shared_object_id": 21}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 55}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
$:" 2quant_dense_3/optimizer_step
(
?0"
trackable_list_wrapper
 : 2quant_dense_3/kernel_min
 : 2quant_dense_3/kernel_max
 "
trackable_list_wrapper
):' 2!quant_dense_3/post_activation_min
):' 2!quant_dense_3/post_activation_max
 "
trackable_list_wrapper
Q
k0
l1
>2
@3
A4
C5
D6"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
F	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
Gtrainable_variables
Hregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 27}
$:" 2quant_dropout/optimizer_step
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
K0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
O	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
Ptrainable_variables
Qregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

nkernel
mbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 5, "activation": {"class_name": "QuantizeAwareActivation", "config": {"activation": "softmax"}, "shared_object_id": 30}, "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 56}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
$:" 2quant_dense_4/optimizer_step
(
?0"
trackable_list_wrapper
 : 2quant_dense_4/kernel_min
 : 2quant_dense_4/kernel_max
 "
trackable_list_wrapper
(:& 2 quant_dense_4/pre_activation_min
(:& 2 quant_dense_4/pre_activation_max
 "
trackable_list_wrapper
Q
m0
n1
T2
V3
W4
Y5
Z6"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
\	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
]trainable_variables
^regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
: 2
dense/bias
: 2dense/kernel
:@2dense_1/bias
 : @2dense_1/kernel
:?2dense_2/bias
!:	@?2dense_2/kernel
:@2dense_3/bias
!:	?@2dense_3/kernel
:2dense_4/bias
 :@2dense_4/kernel
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
$8
&9
'10
)11
*12
113
314
415
616
717
>18
@19
A20
C21
D22
K23
T24
V25
W26
Y27
Z28"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
e0"
trackable_list_wrapper
'
e0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
y	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
ztrainable_variables
{regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
f0
?2"
trackable_tuple_wrapper
'
0"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
g0"
trackable_list_wrapper
'
g0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
h0
?2"
trackable_tuple_wrapper
'
#0"
trackable_list_wrapper
C
$0
&1
'2
)3
*4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
i0"
trackable_list_wrapper
'
i0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
j0
?2"
trackable_tuple_wrapper
'
00"
trackable_list_wrapper
C
10
31
42
63
74"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
k0"
trackable_list_wrapper
'
k0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
l0
?2"
trackable_tuple_wrapper
'
=0"
trackable_list_wrapper
C
>0
@1
A2
C3
D4"
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
trackable_list_wrapper
?
?layers
?	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
J0"
trackable_list_wrapper
'
K0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
m0"
trackable_list_wrapper
'
m0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?	variables
?non_trainable_variables
?layer_metrics
 ?layer_regularization_losses
?metrics
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
n0
?2"
trackable_tuple_wrapper
'
S0"
trackable_list_wrapper
C
T0
V1
W2
Y3
Z4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 57}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 44}
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
:
min_var
max_var"
trackable_dict_wrapper
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
:
&min_var
'max_var"
trackable_dict_wrapper
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
:
3min_var
4max_var"
trackable_dict_wrapper
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
:
@min_var
Amax_var"
trackable_dict_wrapper
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
:
Vmin_var
Wmax_var"
trackable_dict_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
: 2Adam/dense/bias/m
#:! 2Adam/dense/kernel/m
:@2Adam/dense_1/bias/m
%:# @2Adam/dense_1/kernel/m
 :?2Adam/dense_2/bias/m
&:$	@?2Adam/dense_2/kernel/m
:@2Adam/dense_3/bias/m
&:$	?@2Adam/dense_3/kernel/m
:2Adam/dense_4/bias/m
%:#@2Adam/dense_4/kernel/m
: 2Adam/dense/bias/v
#:! 2Adam/dense/kernel/v
:@2Adam/dense_1/bias/v
%:# @2Adam/dense_1/kernel/v
 :?2Adam/dense_2/bias/v
&:$	@?2Adam/dense_2/kernel/v
:@2Adam/dense_3/bias/v
&:$	?@2Adam/dense_3/kernel/v
:2Adam/dense_4/bias/v
%:#@2Adam/dense_4/kernel/v
?2?
!__inference__wrapped_model_939207?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? **?'
%?"
dense_input?????????
?2?
+__inference_sequential_layer_call_fn_939479
+__inference_sequential_layer_call_fn_940580
+__inference_sequential_layer_call_fn_940649
+__inference_sequential_layer_call_fn_940284?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_sequential_layer_call_and_return_conditional_losses_940744
F__inference_sequential_layer_call_and_return_conditional_losses_941038
F__inference_sequential_layer_call_and_return_conditional_losses_940359
F__inference_sequential_layer_call_and_return_conditional_losses_940434?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_quantize_layer_1_layer_call_fn_941047
1__inference_quantize_layer_1_layer_call_fn_941056?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_941065
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_941086?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_quant_dense_layer_call_fn_941103
,__inference_quant_dense_layer_call_fn_941120?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_quant_dense_layer_call_and_return_conditional_losses_941141
G__inference_quant_dense_layer_call_and_return_conditional_losses_941198?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_quant_dense_1_layer_call_fn_941215
.__inference_quant_dense_1_layer_call_fn_941232?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_941253
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_941310?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_quant_dense_2_layer_call_fn_941327
.__inference_quant_dense_2_layer_call_fn_941344?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_941365
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_941422?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_quant_dense_3_layer_call_fn_941439
.__inference_quant_dense_3_layer_call_fn_941456?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_941477
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_941534?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_quant_dropout_layer_call_fn_941539
.__inference_quant_dropout_layer_call_fn_941544?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_quant_dropout_layer_call_and_return_conditional_losses_941549
I__inference_quant_dropout_layer_call_and_return_conditional_losses_941561?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_quant_dense_4_layer_call_fn_941578
.__inference_quant_dense_4_layer_call_fn_941595?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_941616
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_941673?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
$__inference_signature_wrapper_940511dense_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_939207? feh&'g)*j34i67l@AkCDnVWmYZ4?1
*?'
%?"
dense_input?????????
? "=?:
8
quant_dense_4'?$
quant_dense_4??????????
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_941253dh&'g)*3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0?????????@
? ?
I__inference_quant_dense_1_layer_call_and_return_conditional_losses_941310dh&'g)*3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0?????????@
? ?
.__inference_quant_dense_1_layer_call_fn_941215Wh&'g)*3?0
)?&
 ?
inputs????????? 
p 
? "??????????@?
.__inference_quant_dense_1_layer_call_fn_941232Wh&'g)*3?0
)?&
 ?
inputs????????? 
p
? "??????????@?
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_941365ej34i673?0
)?&
 ?
inputs?????????@
p 
? "&?#
?
0??????????
? ?
I__inference_quant_dense_2_layer_call_and_return_conditional_losses_941422ej34i673?0
)?&
 ?
inputs?????????@
p
? "&?#
?
0??????????
? ?
.__inference_quant_dense_2_layer_call_fn_941327Xj34i673?0
)?&
 ?
inputs?????????@
p 
? "????????????
.__inference_quant_dense_2_layer_call_fn_941344Xj34i673?0
)?&
 ?
inputs?????????@
p
? "????????????
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_941477el@AkCD4?1
*?'
!?
inputs??????????
p 
? "%?"
?
0?????????@
? ?
I__inference_quant_dense_3_layer_call_and_return_conditional_losses_941534el@AkCD4?1
*?'
!?
inputs??????????
p
? "%?"
?
0?????????@
? ?
.__inference_quant_dense_3_layer_call_fn_941439Xl@AkCD4?1
*?'
!?
inputs??????????
p 
? "??????????@?
.__inference_quant_dense_3_layer_call_fn_941456Xl@AkCD4?1
*?'
!?
inputs??????????
p
? "??????????@?
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_941616dnVWmYZ3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????
? ?
I__inference_quant_dense_4_layer_call_and_return_conditional_losses_941673dnVWmYZ3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????
? ?
.__inference_quant_dense_4_layer_call_fn_941578WnVWmYZ3?0
)?&
 ?
inputs?????????@
p 
? "???????????
.__inference_quant_dense_4_layer_call_fn_941595WnVWmYZ3?0
)?&
 ?
inputs?????????@
p
? "???????????
G__inference_quant_dense_layer_call_and_return_conditional_losses_941141dfe3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0????????? 
? ?
G__inference_quant_dense_layer_call_and_return_conditional_losses_941198dfe3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0????????? 
? ?
,__inference_quant_dense_layer_call_fn_941103Wfe3?0
)?&
 ?
inputs?????????
p 
? "?????????? ?
,__inference_quant_dense_layer_call_fn_941120Wfe3?0
)?&
 ?
inputs?????????
p
? "?????????? ?
I__inference_quant_dropout_layer_call_and_return_conditional_losses_941549\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
I__inference_quant_dropout_layer_call_and_return_conditional_losses_941561\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
.__inference_quant_dropout_layer_call_fn_941539O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
.__inference_quant_dropout_layer_call_fn_941544O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_941065`3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
L__inference_quantize_layer_1_layer_call_and_return_conditional_losses_941086`3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
1__inference_quantize_layer_1_layer_call_fn_941047S3?0
)?&
 ?
inputs?????????
p 
? "???????????
1__inference_quantize_layer_1_layer_call_fn_941056S3?0
)?&
 ?
inputs?????????
p
? "???????????
F__inference_sequential_layer_call_and_return_conditional_losses_940359? feh&'g)*j34i67l@AkCDnVWmYZ<?9
2?/
%?"
dense_input?????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_940434? feh&'g)*j34i67l@AkCDnVWmYZ<?9
2?/
%?"
dense_input?????????
p

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_940744? feh&'g)*j34i67l@AkCDnVWmYZ7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_941038? feh&'g)*j34i67l@AkCDnVWmYZ7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
+__inference_sequential_layer_call_fn_939479z feh&'g)*j34i67l@AkCDnVWmYZ<?9
2?/
%?"
dense_input?????????
p 

 
? "???????????
+__inference_sequential_layer_call_fn_940284z feh&'g)*j34i67l@AkCDnVWmYZ<?9
2?/
%?"
dense_input?????????
p

 
? "???????????
+__inference_sequential_layer_call_fn_940580u feh&'g)*j34i67l@AkCDnVWmYZ7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
+__inference_sequential_layer_call_fn_940649u feh&'g)*j34i67l@AkCDnVWmYZ7?4
-?*
 ?
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_940511? feh&'g)*j34i67l@AkCDnVWmYZC?@
? 
9?6
4
dense_input%?"
dense_input?????????"=?:
8
quant_dense_4'?$
quant_dense_4?????????