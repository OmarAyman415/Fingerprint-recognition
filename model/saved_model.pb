Σ

??
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
?
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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
executor_typestring ??
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-0-gc256c071bb28ݶ
?
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
: *
dtype0
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	?@*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:@*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:@*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
?
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
: *
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
: *
dtype0
?
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
: *
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

NoOpNoOp
?1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?0
value?0B?0 B?0
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
%
#_self_saveable_object_factories
%
#_self_saveable_object_factories
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
w
#_self_saveable_object_factories
	variables
trainable_variables
 regularization_losses
!	keras_api
?

"kernel
#bias
#$_self_saveable_object_factories
%	variables
&trainable_variables
'regularization_losses
(	keras_api
w
#)_self_saveable_object_factories
*	variables
+trainable_variables
,regularization_losses
-	keras_api
w
#._self_saveable_object_factories
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?

3kernel
4bias
#5_self_saveable_object_factories
6	variables
7trainable_variables
8regularization_losses
9	keras_api
?

:kernel
;bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
 
 
 
F
A0
B1
C2
D3
"4
#5
36
47
:8
;9
F
A0
B1
C2
D3
"4
#5
36
47
:8
;9
 
?
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
 
 
%
#J_self_saveable_object_factories
?

Akernel
Bbias
#K_self_saveable_object_factories
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
w
#P_self_saveable_object_factories
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
?

Ckernel
Dbias
#U_self_saveable_object_factories
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
w
#Z_self_saveable_object_factories
[	variables
\trainable_variables
]regularization_losses
^	keras_api
 

A0
B1
C2
D3

A0
B1
C2
D3
 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
 
?
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
 regularization_losses
\Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

"0
#1

"0
#1
 
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
%	variables
&trainable_variables
'regularization_losses
 
 
 
 
?
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
*	variables
+trainable_variables
,regularization_losses
 
 
 
 
?
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
/	variables
0trainable_variables
1regularization_losses
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

30
41

30
41
 
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
6	variables
7trainable_variables
8regularization_losses
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1

:0
;1
 
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?regularization_losses
KI
VARIABLE_VALUEconv2d_9/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_9/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_10/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_10/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
 
?
0
1
2
3
4
5
6
7
	8

?0
?1
 
 
 
 

A0
B1

A0
B1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
 

C0
D1

C0
D1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
[	variables
\trainable_variables
]regularization_losses
 
#
0
1
2
3
4
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
?
serving_default_input_10Placeholder*/
_output_shapes
:?????????ZZ*
dtype0*$
shape:?????????ZZ
?
serving_default_input_11Placeholder*/
_output_shapes
:?????????ZZ*
dtype0*$
shape:?????????ZZ
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_10serving_default_input_11conv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_103213
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_103696
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_11/kernelconv2d_11/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biastotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_103748??
?
M
1__inference_max_pooling2d_11_layer_call_fn_103489

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_102880h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
(__inference_model_6_layer_call_fn_102699
input_12!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_102688w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ZZ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_12
?&
?
C__inference_model_7_layer_call_and_return_conditional_losses_103185
input_10
input_11(
model_6_103152: 
model_6_103154: (
model_6_103156:  
model_6_103158: *
conv2d_11_103167:  
conv2d_11_103169: !
dense_6_103174:	?@
dense_6_103176:@ 
dense_7_103179:@
dense_7_103181:
identity??!conv2d_11/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?model_6/StatefulPartitionedCall?!model_6/StatefulPartitionedCall_1?
model_6/StatefulPartitionedCallStatefulPartitionedCallinput_10model_6_103152model_6_103154model_6_103156model_6_103158*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_102760?
!model_6/StatefulPartitionedCall_1StatefulPartitionedCallinput_11model_6_103152model_6_103154model_6_103156model_6_103158*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_102760?
subtract_3/PartitionedCallPartitionedCall(model_6/StatefulPartitionedCall:output:0*model_6/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_subtract_3_layer_call_and_return_conditional_losses_102857?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall#subtract_3/PartitionedCall:output:0conv2d_11_103167conv2d_11_103169*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_102870?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_102880?
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_102888?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_103174dense_6_103176*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_102901?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_103179dense_7_103181*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_102918w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^model_6/StatefulPartitionedCall"^model_6/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:?????????ZZ:?????????ZZ: : : : : : : : : : 2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
model_6/StatefulPartitionedCallmodel_6/StatefulPartitionedCall2F
!model_6/StatefulPartitionedCall_1!model_6/StatefulPartitionedCall_1:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_10:YU
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_11
?
?
E__inference_conv2d_11_layer_call_and_return_conditional_losses_102870

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_11_layer_call_fn_103484

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_102825?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
r
F__inference_subtract_3_layer_call_and_return_conditional_losses_103459
inputs_0
inputs_1
identityX
subSubinputs_0inputs_1*
T0*/
_output_shapes
:????????? W
IdentityIdentitysub:z:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:????????? :????????? :Y U
/
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:????????? 
"
_user_specified_name
inputs/1
?
?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_103570

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????ZZ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????ZZ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ZZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?
?
(__inference_model_7_layer_call_fn_103265
inputs_0
inputs_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_103062o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:?????????ZZ:?????????ZZ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????ZZ
"
_user_specified_name
inputs/1
?
?
E__inference_conv2d_10_layer_call_and_return_conditional_losses_102675

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????-- i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????-- w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????-- : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????-- 
 
_user_specified_nameinputs
?
?
(__inference_model_6_layer_call_fn_103394

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_102688w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ZZ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?
?
E__inference_conv2d_11_layer_call_and_return_conditional_losses_103479

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?Y
?
!__inference__wrapped_model_102610
input_10
input_11Q
7model_7_model_6_conv2d_9_conv2d_readvariableop_resource: F
8model_7_model_6_conv2d_9_biasadd_readvariableop_resource: R
8model_7_model_6_conv2d_10_conv2d_readvariableop_resource:  G
9model_7_model_6_conv2d_10_biasadd_readvariableop_resource: J
0model_7_conv2d_11_conv2d_readvariableop_resource:  ?
1model_7_conv2d_11_biasadd_readvariableop_resource: A
.model_7_dense_6_matmul_readvariableop_resource:	?@=
/model_7_dense_6_biasadd_readvariableop_resource:@@
.model_7_dense_7_matmul_readvariableop_resource:@=
/model_7_dense_7_biasadd_readvariableop_resource:
identity??(model_7/conv2d_11/BiasAdd/ReadVariableOp?'model_7/conv2d_11/Conv2D/ReadVariableOp?&model_7/dense_6/BiasAdd/ReadVariableOp?%model_7/dense_6/MatMul/ReadVariableOp?&model_7/dense_7/BiasAdd/ReadVariableOp?%model_7/dense_7/MatMul/ReadVariableOp?0model_7/model_6/conv2d_10/BiasAdd/ReadVariableOp?2model_7/model_6/conv2d_10/BiasAdd_1/ReadVariableOp?/model_7/model_6/conv2d_10/Conv2D/ReadVariableOp?1model_7/model_6/conv2d_10/Conv2D_1/ReadVariableOp?/model_7/model_6/conv2d_9/BiasAdd/ReadVariableOp?1model_7/model_6/conv2d_9/BiasAdd_1/ReadVariableOp?.model_7/model_6/conv2d_9/Conv2D/ReadVariableOp?0model_7/model_6/conv2d_9/Conv2D_1/ReadVariableOp?
.model_7/model_6/conv2d_9/Conv2D/ReadVariableOpReadVariableOp7model_7_model_6_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_7/model_6/conv2d_9/Conv2DConv2Dinput_106model_7/model_6/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
?
/model_7/model_6/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp8model_7_model_6_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
 model_7/model_6/conv2d_9/BiasAddBiasAdd(model_7/model_6/conv2d_9/Conv2D:output:07model_7/model_6/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ ?
model_7/model_6/conv2d_9/ReluRelu)model_7/model_6/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ZZ ?
'model_7/model_6/max_pooling2d_9/MaxPoolMaxPool+model_7/model_6/conv2d_9/Relu:activations:0*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
?
/model_7/model_6/conv2d_10/Conv2D/ReadVariableOpReadVariableOp8model_7_model_6_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
 model_7/model_6/conv2d_10/Conv2DConv2D0model_7/model_6/max_pooling2d_9/MaxPool:output:07model_7/model_6/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- *
paddingSAME*
strides
?
0model_7/model_6/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp9model_7_model_6_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
!model_7/model_6/conv2d_10/BiasAddBiasAdd)model_7/model_6/conv2d_10/Conv2D:output:08model_7/model_6/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- ?
model_7/model_6/conv2d_10/ReluRelu*model_7/model_6/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????-- ?
(model_7/model_6/max_pooling2d_10/MaxPoolMaxPool,model_7/model_6/conv2d_10/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
?
0model_7/model_6/conv2d_9/Conv2D_1/ReadVariableOpReadVariableOp7model_7_model_6_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
!model_7/model_6/conv2d_9/Conv2D_1Conv2Dinput_118model_7/model_6/conv2d_9/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
?
1model_7/model_6/conv2d_9/BiasAdd_1/ReadVariableOpReadVariableOp8model_7_model_6_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
"model_7/model_6/conv2d_9/BiasAdd_1BiasAdd*model_7/model_6/conv2d_9/Conv2D_1:output:09model_7/model_6/conv2d_9/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ ?
model_7/model_6/conv2d_9/Relu_1Relu+model_7/model_6/conv2d_9/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????ZZ ?
)model_7/model_6/max_pooling2d_9/MaxPool_1MaxPool-model_7/model_6/conv2d_9/Relu_1:activations:0*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
?
1model_7/model_6/conv2d_10/Conv2D_1/ReadVariableOpReadVariableOp8model_7_model_6_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
"model_7/model_6/conv2d_10/Conv2D_1Conv2D2model_7/model_6/max_pooling2d_9/MaxPool_1:output:09model_7/model_6/conv2d_10/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- *
paddingSAME*
strides
?
2model_7/model_6/conv2d_10/BiasAdd_1/ReadVariableOpReadVariableOp9model_7_model_6_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
#model_7/model_6/conv2d_10/BiasAdd_1BiasAdd+model_7/model_6/conv2d_10/Conv2D_1:output:0:model_7/model_6/conv2d_10/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- ?
 model_7/model_6/conv2d_10/Relu_1Relu,model_7/model_6/conv2d_10/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????-- ?
*model_7/model_6/max_pooling2d_10/MaxPool_1MaxPool.model_7/model_6/conv2d_10/Relu_1:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
?
model_7/subtract_3/subSub1model_7/model_6/max_pooling2d_10/MaxPool:output:03model_7/model_6/max_pooling2d_10/MaxPool_1:output:0*
T0*/
_output_shapes
:????????? ?
'model_7/conv2d_11/Conv2D/ReadVariableOpReadVariableOp0model_7_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_7/conv2d_11/Conv2DConv2Dmodel_7/subtract_3/sub:z:0/model_7/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
(model_7/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp1model_7_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_7/conv2d_11/BiasAddBiasAdd!model_7/conv2d_11/Conv2D:output:00model_7/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? |
model_7/conv2d_11/ReluRelu"model_7/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
 model_7/max_pooling2d_11/MaxPoolMaxPool$model_7/conv2d_11/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
h
model_7/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model_7/flatten_3/ReshapeReshape)model_7/max_pooling2d_11/MaxPool:output:0 model_7/flatten_3/Const:output:0*
T0*(
_output_shapes
:???????????
%model_7/dense_6/MatMul/ReadVariableOpReadVariableOp.model_7_dense_6_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
model_7/dense_6/MatMulMatMul"model_7/flatten_3/Reshape:output:0-model_7/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
&model_7/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_7_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_7/dense_6/BiasAddBiasAdd model_7/dense_6/MatMul:product:0.model_7/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@p
model_7/dense_6/ReluRelu model_7/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
%model_7/dense_7/MatMul/ReadVariableOpReadVariableOp.model_7_dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
model_7/dense_7/MatMulMatMul"model_7/dense_6/Relu:activations:0-model_7/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
&model_7/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_7_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_7/dense_7/BiasAddBiasAdd model_7/dense_7/MatMul:product:0.model_7/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
model_7/dense_7/SigmoidSigmoid model_7/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitymodel_7/dense_7/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp)^model_7/conv2d_11/BiasAdd/ReadVariableOp(^model_7/conv2d_11/Conv2D/ReadVariableOp'^model_7/dense_6/BiasAdd/ReadVariableOp&^model_7/dense_6/MatMul/ReadVariableOp'^model_7/dense_7/BiasAdd/ReadVariableOp&^model_7/dense_7/MatMul/ReadVariableOp1^model_7/model_6/conv2d_10/BiasAdd/ReadVariableOp3^model_7/model_6/conv2d_10/BiasAdd_1/ReadVariableOp0^model_7/model_6/conv2d_10/Conv2D/ReadVariableOp2^model_7/model_6/conv2d_10/Conv2D_1/ReadVariableOp0^model_7/model_6/conv2d_9/BiasAdd/ReadVariableOp2^model_7/model_6/conv2d_9/BiasAdd_1/ReadVariableOp/^model_7/model_6/conv2d_9/Conv2D/ReadVariableOp1^model_7/model_6/conv2d_9/Conv2D_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:?????????ZZ:?????????ZZ: : : : : : : : : : 2T
(model_7/conv2d_11/BiasAdd/ReadVariableOp(model_7/conv2d_11/BiasAdd/ReadVariableOp2R
'model_7/conv2d_11/Conv2D/ReadVariableOp'model_7/conv2d_11/Conv2D/ReadVariableOp2P
&model_7/dense_6/BiasAdd/ReadVariableOp&model_7/dense_6/BiasAdd/ReadVariableOp2N
%model_7/dense_6/MatMul/ReadVariableOp%model_7/dense_6/MatMul/ReadVariableOp2P
&model_7/dense_7/BiasAdd/ReadVariableOp&model_7/dense_7/BiasAdd/ReadVariableOp2N
%model_7/dense_7/MatMul/ReadVariableOp%model_7/dense_7/MatMul/ReadVariableOp2d
0model_7/model_6/conv2d_10/BiasAdd/ReadVariableOp0model_7/model_6/conv2d_10/BiasAdd/ReadVariableOp2h
2model_7/model_6/conv2d_10/BiasAdd_1/ReadVariableOp2model_7/model_6/conv2d_10/BiasAdd_1/ReadVariableOp2b
/model_7/model_6/conv2d_10/Conv2D/ReadVariableOp/model_7/model_6/conv2d_10/Conv2D/ReadVariableOp2f
1model_7/model_6/conv2d_10/Conv2D_1/ReadVariableOp1model_7/model_6/conv2d_10/Conv2D_1/ReadVariableOp2b
/model_7/model_6/conv2d_9/BiasAdd/ReadVariableOp/model_7/model_6/conv2d_9/BiasAdd/ReadVariableOp2f
1model_7/model_6/conv2d_9/BiasAdd_1/ReadVariableOp1model_7/model_6/conv2d_9/BiasAdd_1/ReadVariableOp2`
.model_7/model_6/conv2d_9/Conv2D/ReadVariableOp.model_7/model_6/conv2d_9/Conv2D/ReadVariableOp2d
0model_7/model_6/conv2d_9/Conv2D_1/ReadVariableOp0model_7/model_6/conv2d_9/Conv2D_1/ReadVariableOp:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_10:YU
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_11
?
L
0__inference_max_pooling2d_9_layer_call_fn_103575

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_102619?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_10_layer_call_fn_103620

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_102685h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????-- :W S
/
_output_shapes
:?????????-- 
 
_user_specified_nameinputs
?

?
C__inference_dense_7_layer_call_and_return_conditional_losses_103550

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
C__inference_model_6_layer_call_and_return_conditional_losses_103427

inputsA
'conv2d_9_conv2d_readvariableop_resource: 6
(conv2d_9_biasadd_readvariableop_resource: B
(conv2d_10_conv2d_readvariableop_resource:  7
)conv2d_10_biasadd_readvariableop_resource: 
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_9/Conv2DConv2Dinputs&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ j
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ZZ ?
max_pooling2d_9/MaxPoolMaxPoolconv2d_9/Relu:activations:0*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_10/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- *
paddingSAME*
strides
?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- l
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????-- ?
max_pooling2d_10/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
x
IdentityIdentity!max_pooling2d_10/MaxPool:output:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ZZ: : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_103590

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????-- "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????ZZ :W S
/
_output_shapes
:?????????ZZ 
 
_user_specified_nameinputs
?
?
(__inference_dense_6_layer_call_fn_103519

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_102901o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_10_layer_call_and_return_conditional_losses_103610

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????-- i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????-- w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????-- : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????-- 
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_102825

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_102652

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????ZZ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????ZZ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ZZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?
?
C__inference_model_6_layer_call_and_return_conditional_losses_102816
input_12)
conv2d_9_102803: 
conv2d_9_102805: *
conv2d_10_102809:  
conv2d_10_102811: 
identity??!conv2d_10/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallinput_12conv2d_9_102803conv2d_9_102805*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_102652?
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_102662?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_102809conv2d_10_102811*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_102675?
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_102685?
IdentityIdentity)max_pooling2d_10/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ZZ: : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_12
?
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_103494

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_model_6_layer_call_and_return_conditional_losses_102688

inputs)
conv2d_9_102653: 
conv2d_9_102655: *
conv2d_10_102676:  
conv2d_10_102678: 
identity??!conv2d_10/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_9_102653conv2d_9_102655*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_102652?
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_102662?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_102676conv2d_10_102678*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_102675?
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_102685?
IdentityIdentity)max_pooling2d_10/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ZZ: : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_102685

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????-- :W S
/
_output_shapes
:?????????-- 
 
_user_specified_nameinputs
?
?
*__inference_conv2d_10_layer_call_fn_103599

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_102675w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????-- `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????-- : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????-- 
 
_user_specified_nameinputs
?
?
(__inference_model_6_layer_call_fn_103407

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_102760w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ZZ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?
?
C__inference_model_6_layer_call_and_return_conditional_losses_103447

inputsA
'conv2d_9_conv2d_readvariableop_resource: 6
(conv2d_9_biasadd_readvariableop_resource: B
(conv2d_10_conv2d_readvariableop_resource:  7
)conv2d_10_biasadd_readvariableop_resource: 
identity?? conv2d_10/BiasAdd/ReadVariableOp?conv2d_10/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_9/Conv2DConv2Dinputs&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ j
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ZZ ?
max_pooling2d_9/MaxPoolMaxPoolconv2d_9/Relu:activations:0*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
?
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_10/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- *
paddingSAME*
strides
?
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- l
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????-- ?
max_pooling2d_10/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
x
IdentityIdentity!max_pooling2d_10/MaxPool:output:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ZZ: : : : 2D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_103499

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?&
?
C__inference_model_7_layer_call_and_return_conditional_losses_103148
input_10
input_11(
model_6_103115: 
model_6_103117: (
model_6_103119:  
model_6_103121: *
conv2d_11_103130:  
conv2d_11_103132: !
dense_6_103137:	?@
dense_6_103139:@ 
dense_7_103142:@
dense_7_103144:
identity??!conv2d_11/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?model_6/StatefulPartitionedCall?!model_6/StatefulPartitionedCall_1?
model_6/StatefulPartitionedCallStatefulPartitionedCallinput_10model_6_103115model_6_103117model_6_103119model_6_103121*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_102688?
!model_6/StatefulPartitionedCall_1StatefulPartitionedCallinput_11model_6_103115model_6_103117model_6_103119model_6_103121*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_102688?
subtract_3/PartitionedCallPartitionedCall(model_6/StatefulPartitionedCall:output:0*model_6/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_subtract_3_layer_call_and_return_conditional_losses_102857?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall#subtract_3/PartitionedCall:output:0conv2d_11_103130conv2d_11_103132*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_102870?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_102880?
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_102888?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_103137dense_6_103139*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_102901?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_103142dense_7_103144*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_102918w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^model_6/StatefulPartitionedCall"^model_6/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:?????????ZZ:?????????ZZ: : : : : : : : : : 2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
model_6/StatefulPartitionedCallmodel_6/StatefulPartitionedCall2F
!model_6/StatefulPartitionedCall_1!model_6/StatefulPartitionedCall_1:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_10:YU
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_11
?
?
C__inference_model_6_layer_call_and_return_conditional_losses_102800
input_12)
conv2d_9_102787: 
conv2d_9_102789: *
conv2d_10_102793:  
conv2d_10_102795: 
identity??!conv2d_10/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallinput_12conv2d_9_102787conv2d_9_102789*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_102652?
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_102662?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_102793conv2d_10_102795*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_102675?
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_102685?
IdentityIdentity)max_pooling2d_10/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ZZ: : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_12
?
?
(__inference_model_7_layer_call_fn_103239
inputs_0
inputs_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_102925o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:?????????ZZ:?????????ZZ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????ZZ
"
_user_specified_name
inputs/1
?
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_103585

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?&
?
C__inference_model_7_layer_call_and_return_conditional_losses_103062

inputs
inputs_1(
model_6_103029: 
model_6_103031: (
model_6_103033:  
model_6_103035: *
conv2d_11_103044:  
conv2d_11_103046: !
dense_6_103051:	?@
dense_6_103053:@ 
dense_7_103056:@
dense_7_103058:
identity??!conv2d_11/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?model_6/StatefulPartitionedCall?!model_6/StatefulPartitionedCall_1?
model_6/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_6_103029model_6_103031model_6_103033model_6_103035*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_102760?
!model_6/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_6_103029model_6_103031model_6_103033model_6_103035*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_102760?
subtract_3/PartitionedCallPartitionedCall(model_6/StatefulPartitionedCall:output:0*model_6/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_subtract_3_layer_call_and_return_conditional_losses_102857?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall#subtract_3/PartitionedCall:output:0conv2d_11_103044conv2d_11_103046*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_102870?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_102880?
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_102888?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_103051dense_6_103053*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_102901?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_103056dense_7_103058*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_102918w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^model_6/StatefulPartitionedCall"^model_6/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:?????????ZZ:?????????ZZ: : : : : : : : : : 2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
model_6/StatefulPartitionedCallmodel_6/StatefulPartitionedCall2F
!model_6/StatefulPartitionedCall_1!model_6/StatefulPartitionedCall_1:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?%
?
__inference__traced_save_103696
file_prefix/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapesw
u: :  : :	?@:@:@:: : :  : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:  : 

_output_shapes
: :%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,	(
&
_output_shapes
:  : 


_output_shapes
: :
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
: 
?
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_103625

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_102880

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
W
+__inference_subtract_3_layer_call_fn_103453
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_subtract_3_layer_call_and_return_conditional_losses_102857h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:????????? :????????? :Y U
/
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:????????? 
"
_user_specified_name
inputs/1
?
?
(__inference_model_7_layer_call_fn_103111
input_10
input_11!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_10input_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_103062o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:?????????ZZ:?????????ZZ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_10:YU
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_11
?
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_102662

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????-- "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????ZZ :W S
/
_output_shapes
:?????????ZZ 
 
_user_specified_nameinputs
?O
?

C__inference_model_7_layer_call_and_return_conditional_losses_103381
inputs_0
inputs_1I
/model_6_conv2d_9_conv2d_readvariableop_resource: >
0model_6_conv2d_9_biasadd_readvariableop_resource: J
0model_6_conv2d_10_conv2d_readvariableop_resource:  ?
1model_6_conv2d_10_biasadd_readvariableop_resource: B
(conv2d_11_conv2d_readvariableop_resource:  7
)conv2d_11_biasadd_readvariableop_resource: 9
&dense_6_matmul_readvariableop_resource:	?@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:
identity?? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?(model_6/conv2d_10/BiasAdd/ReadVariableOp?*model_6/conv2d_10/BiasAdd_1/ReadVariableOp?'model_6/conv2d_10/Conv2D/ReadVariableOp?)model_6/conv2d_10/Conv2D_1/ReadVariableOp?'model_6/conv2d_9/BiasAdd/ReadVariableOp?)model_6/conv2d_9/BiasAdd_1/ReadVariableOp?&model_6/conv2d_9/Conv2D/ReadVariableOp?(model_6/conv2d_9/Conv2D_1/ReadVariableOp?
&model_6/conv2d_9/Conv2D/ReadVariableOpReadVariableOp/model_6_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_6/conv2d_9/Conv2DConv2Dinputs_0.model_6/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
?
'model_6/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp0model_6_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_6/conv2d_9/BiasAddBiasAdd model_6/conv2d_9/Conv2D:output:0/model_6/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ z
model_6/conv2d_9/ReluRelu!model_6/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ZZ ?
model_6/max_pooling2d_9/MaxPoolMaxPool#model_6/conv2d_9/Relu:activations:0*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
?
'model_6/conv2d_10/Conv2D/ReadVariableOpReadVariableOp0model_6_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_6/conv2d_10/Conv2DConv2D(model_6/max_pooling2d_9/MaxPool:output:0/model_6/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- *
paddingSAME*
strides
?
(model_6/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_6/conv2d_10/BiasAddBiasAdd!model_6/conv2d_10/Conv2D:output:00model_6/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- |
model_6/conv2d_10/ReluRelu"model_6/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????-- ?
 model_6/max_pooling2d_10/MaxPoolMaxPool$model_6/conv2d_10/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
?
(model_6/conv2d_9/Conv2D_1/ReadVariableOpReadVariableOp/model_6_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_6/conv2d_9/Conv2D_1Conv2Dinputs_10model_6/conv2d_9/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
?
)model_6/conv2d_9/BiasAdd_1/ReadVariableOpReadVariableOp0model_6_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_6/conv2d_9/BiasAdd_1BiasAdd"model_6/conv2d_9/Conv2D_1:output:01model_6/conv2d_9/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ ~
model_6/conv2d_9/Relu_1Relu#model_6/conv2d_9/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????ZZ ?
!model_6/max_pooling2d_9/MaxPool_1MaxPool%model_6/conv2d_9/Relu_1:activations:0*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
?
)model_6/conv2d_10/Conv2D_1/ReadVariableOpReadVariableOp0model_6_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_6/conv2d_10/Conv2D_1Conv2D*model_6/max_pooling2d_9/MaxPool_1:output:01model_6/conv2d_10/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- *
paddingSAME*
strides
?
*model_6/conv2d_10/BiasAdd_1/ReadVariableOpReadVariableOp1model_6_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_6/conv2d_10/BiasAdd_1BiasAdd#model_6/conv2d_10/Conv2D_1:output:02model_6/conv2d_10/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- ?
model_6/conv2d_10/Relu_1Relu$model_6/conv2d_10/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????-- ?
"model_6/max_pooling2d_10/MaxPool_1MaxPool&model_6/conv2d_10/Relu_1:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
?
subtract_3/subSub)model_6/max_pooling2d_10/MaxPool:output:0+model_6/max_pooling2d_10/MaxPool_1:output:0*
T0*/
_output_shapes
:????????? ?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_11/Conv2DConv2Dsubtract_3/sub:z:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? l
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
max_pooling2d_11/MaxPoolMaxPoolconv2d_11/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_3/ReshapeReshape!max_pooling2d_11/MaxPool:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:???????????
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_7/SigmoidSigmoiddense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_7/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp)^model_6/conv2d_10/BiasAdd/ReadVariableOp+^model_6/conv2d_10/BiasAdd_1/ReadVariableOp(^model_6/conv2d_10/Conv2D/ReadVariableOp*^model_6/conv2d_10/Conv2D_1/ReadVariableOp(^model_6/conv2d_9/BiasAdd/ReadVariableOp*^model_6/conv2d_9/BiasAdd_1/ReadVariableOp'^model_6/conv2d_9/Conv2D/ReadVariableOp)^model_6/conv2d_9/Conv2D_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:?????????ZZ:?????????ZZ: : : : : : : : : : 2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2T
(model_6/conv2d_10/BiasAdd/ReadVariableOp(model_6/conv2d_10/BiasAdd/ReadVariableOp2X
*model_6/conv2d_10/BiasAdd_1/ReadVariableOp*model_6/conv2d_10/BiasAdd_1/ReadVariableOp2R
'model_6/conv2d_10/Conv2D/ReadVariableOp'model_6/conv2d_10/Conv2D/ReadVariableOp2V
)model_6/conv2d_10/Conv2D_1/ReadVariableOp)model_6/conv2d_10/Conv2D_1/ReadVariableOp2R
'model_6/conv2d_9/BiasAdd/ReadVariableOp'model_6/conv2d_9/BiasAdd/ReadVariableOp2V
)model_6/conv2d_9/BiasAdd_1/ReadVariableOp)model_6/conv2d_9/BiasAdd_1/ReadVariableOp2P
&model_6/conv2d_9/Conv2D/ReadVariableOp&model_6/conv2d_9/Conv2D/ReadVariableOp2T
(model_6/conv2d_9/Conv2D_1/ReadVariableOp(model_6/conv2d_9/Conv2D_1/ReadVariableOp:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????ZZ
"
_user_specified_name
inputs/1
?
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_102619

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?9
?
"__inference__traced_restore_103748
file_prefix;
!assignvariableop_conv2d_11_kernel:  /
!assignvariableop_1_conv2d_11_bias: 4
!assignvariableop_2_dense_6_kernel:	?@-
assignvariableop_3_dense_6_bias:@3
!assignvariableop_4_dense_7_kernel:@-
assignvariableop_5_dense_7_bias:<
"assignvariableop_6_conv2d_9_kernel: .
 assignvariableop_7_conv2d_9_bias: =
#assignvariableop_8_conv2d_10_kernel:  /
!assignvariableop_9_conv2d_10_bias: #
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: 
identity_15??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_11_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_11_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_6_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_6_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_7_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_7_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_9_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_9_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_10_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_10_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
$__inference_signature_wrapper_103213
input_10
input_11!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_10input_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_102610o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:?????????ZZ:?????????ZZ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_10:YU
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_11
?
L
0__inference_max_pooling2d_9_layer_call_fn_103580

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_102662h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????-- "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????ZZ :W S
/
_output_shapes
:?????????ZZ 
 
_user_specified_nameinputs
?
?
(__inference_model_7_layer_call_fn_102948
input_10
input_11!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_10input_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_102925o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:?????????ZZ:?????????ZZ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_10:YU
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_11
?

?
C__inference_dense_6_layer_call_and_return_conditional_losses_102901

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_11_layer_call_fn_103468

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_102870w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
(__inference_dense_7_layer_call_fn_103539

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_102918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_102888

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
)__inference_conv2d_9_layer_call_fn_103559

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_102652w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????ZZ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ZZ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_102631

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
C__inference_dense_6_layer_call_and_return_conditional_losses_103530

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
C__inference_dense_7_layer_call_and_return_conditional_losses_102918

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?&
?
C__inference_model_7_layer_call_and_return_conditional_losses_102925

inputs
inputs_1(
model_6_102837: 
model_6_102839: (
model_6_102841:  
model_6_102843: *
conv2d_11_102871:  
conv2d_11_102873: !
dense_6_102902:	?@
dense_6_102904:@ 
dense_7_102919:@
dense_7_102921:
identity??!conv2d_11/StatefulPartitionedCall?dense_6/StatefulPartitionedCall?dense_7/StatefulPartitionedCall?model_6/StatefulPartitionedCall?!model_6/StatefulPartitionedCall_1?
model_6/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_6_102837model_6_102839model_6_102841model_6_102843*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_102688?
!model_6/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_6_102837model_6_102839model_6_102841model_6_102843*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_102688?
subtract_3/PartitionedCallPartitionedCall(model_6/StatefulPartitionedCall:output:0*model_6/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_subtract_3_layer_call_and_return_conditional_losses_102857?
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall#subtract_3/PartitionedCall:output:0conv2d_11_102871conv2d_11_102873*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_102870?
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_102880?
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_102888?
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_102902dense_6_102904*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_102901?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_102919dense_7_102921*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_102918w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^model_6/StatefulPartitionedCall"^model_6/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:?????????ZZ:?????????ZZ: : : : : : : : : : 2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
model_6/StatefulPartitionedCallmodel_6/StatefulPartitionedCall2F
!model_6/StatefulPartitionedCall_1!model_6/StatefulPartitionedCall_1:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_10_layer_call_fn_103615

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_102631?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_103510

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
(__inference_model_6_layer_call_fn_102784
input_12!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_12unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_102760w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ZZ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
input_12
?
?
C__inference_model_6_layer_call_and_return_conditional_losses_102760

inputs)
conv2d_9_102747: 
conv2d_9_102749: *
conv2d_10_102753:  
conv2d_10_102755: 
identity??!conv2d_10/StatefulPartitionedCall? conv2d_9/StatefulPartitionedCall?
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_9_102747conv2d_9_102749*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_102652?
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_102662?
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_102753conv2d_10_102755*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_102675?
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_102685?
IdentityIdentity)max_pooling2d_10/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? ?
NoOpNoOp"^conv2d_10/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????ZZ: : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_103630

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????-- :W S
/
_output_shapes
:?????????-- 
 
_user_specified_nameinputs
?
F
*__inference_flatten_3_layer_call_fn_103504

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_102888a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?O
?

C__inference_model_7_layer_call_and_return_conditional_losses_103323
inputs_0
inputs_1I
/model_6_conv2d_9_conv2d_readvariableop_resource: >
0model_6_conv2d_9_biasadd_readvariableop_resource: J
0model_6_conv2d_10_conv2d_readvariableop_resource:  ?
1model_6_conv2d_10_biasadd_readvariableop_resource: B
(conv2d_11_conv2d_readvariableop_resource:  7
)conv2d_11_biasadd_readvariableop_resource: 9
&dense_6_matmul_readvariableop_resource:	?@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:
identity?? conv2d_11/BiasAdd/ReadVariableOp?conv2d_11/Conv2D/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?(model_6/conv2d_10/BiasAdd/ReadVariableOp?*model_6/conv2d_10/BiasAdd_1/ReadVariableOp?'model_6/conv2d_10/Conv2D/ReadVariableOp?)model_6/conv2d_10/Conv2D_1/ReadVariableOp?'model_6/conv2d_9/BiasAdd/ReadVariableOp?)model_6/conv2d_9/BiasAdd_1/ReadVariableOp?&model_6/conv2d_9/Conv2D/ReadVariableOp?(model_6/conv2d_9/Conv2D_1/ReadVariableOp?
&model_6/conv2d_9/Conv2D/ReadVariableOpReadVariableOp/model_6_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_6/conv2d_9/Conv2DConv2Dinputs_0.model_6/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
?
'model_6/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp0model_6_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_6/conv2d_9/BiasAddBiasAdd model_6/conv2d_9/Conv2D:output:0/model_6/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ z
model_6/conv2d_9/ReluRelu!model_6/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ZZ ?
model_6/max_pooling2d_9/MaxPoolMaxPool#model_6/conv2d_9/Relu:activations:0*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
?
'model_6/conv2d_10/Conv2D/ReadVariableOpReadVariableOp0model_6_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_6/conv2d_10/Conv2DConv2D(model_6/max_pooling2d_9/MaxPool:output:0/model_6/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- *
paddingSAME*
strides
?
(model_6/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_6/conv2d_10/BiasAddBiasAdd!model_6/conv2d_10/Conv2D:output:00model_6/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- |
model_6/conv2d_10/ReluRelu"model_6/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:?????????-- ?
 model_6/max_pooling2d_10/MaxPoolMaxPool$model_6/conv2d_10/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
?
(model_6/conv2d_9/Conv2D_1/ReadVariableOpReadVariableOp/model_6_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_6/conv2d_9/Conv2D_1Conv2Dinputs_10model_6/conv2d_9/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
?
)model_6/conv2d_9/BiasAdd_1/ReadVariableOpReadVariableOp0model_6_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_6/conv2d_9/BiasAdd_1BiasAdd"model_6/conv2d_9/Conv2D_1:output:01model_6/conv2d_9/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ ~
model_6/conv2d_9/Relu_1Relu#model_6/conv2d_9/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????ZZ ?
!model_6/max_pooling2d_9/MaxPool_1MaxPool%model_6/conv2d_9/Relu_1:activations:0*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
?
)model_6/conv2d_10/Conv2D_1/ReadVariableOpReadVariableOp0model_6_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_6/conv2d_10/Conv2D_1Conv2D*model_6/max_pooling2d_9/MaxPool_1:output:01model_6/conv2d_10/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- *
paddingSAME*
strides
?
*model_6/conv2d_10/BiasAdd_1/ReadVariableOpReadVariableOp1model_6_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_6/conv2d_10/BiasAdd_1BiasAdd#model_6/conv2d_10/Conv2D_1:output:02model_6/conv2d_10/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-- ?
model_6/conv2d_10/Relu_1Relu$model_6/conv2d_10/BiasAdd_1:output:0*
T0*/
_output_shapes
:?????????-- ?
"model_6/max_pooling2d_10/MaxPool_1MaxPool&model_6/conv2d_10/Relu_1:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
?
subtract_3/subSub)model_6/max_pooling2d_10/MaxPool:output:0+model_6/max_pooling2d_10/MaxPool_1:output:0*
T0*/
_output_shapes
:????????? ?
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_11/Conv2DConv2Dsubtract_3/sub:z:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
?
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? l
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
max_pooling2d_11/MaxPoolMaxPoolconv2d_11/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_3/ReshapeReshape!max_pooling2d_11/MaxPool:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:???????????
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_7/SigmoidSigmoiddense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_7/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp)^model_6/conv2d_10/BiasAdd/ReadVariableOp+^model_6/conv2d_10/BiasAdd_1/ReadVariableOp(^model_6/conv2d_10/Conv2D/ReadVariableOp*^model_6/conv2d_10/Conv2D_1/ReadVariableOp(^model_6/conv2d_9/BiasAdd/ReadVariableOp*^model_6/conv2d_9/BiasAdd_1/ReadVariableOp'^model_6/conv2d_9/Conv2D/ReadVariableOp)^model_6/conv2d_9/Conv2D_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:?????????ZZ:?????????ZZ: : : : : : : : : : 2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2T
(model_6/conv2d_10/BiasAdd/ReadVariableOp(model_6/conv2d_10/BiasAdd/ReadVariableOp2X
*model_6/conv2d_10/BiasAdd_1/ReadVariableOp*model_6/conv2d_10/BiasAdd_1/ReadVariableOp2R
'model_6/conv2d_10/Conv2D/ReadVariableOp'model_6/conv2d_10/Conv2D/ReadVariableOp2V
)model_6/conv2d_10/Conv2D_1/ReadVariableOp)model_6/conv2d_10/Conv2D_1/ReadVariableOp2R
'model_6/conv2d_9/BiasAdd/ReadVariableOp'model_6/conv2d_9/BiasAdd/ReadVariableOp2V
)model_6/conv2d_9/BiasAdd_1/ReadVariableOp)model_6/conv2d_9/BiasAdd_1/ReadVariableOp2P
&model_6/conv2d_9/Conv2D/ReadVariableOp&model_6/conv2d_9/Conv2D/ReadVariableOp2T
(model_6/conv2d_9/Conv2D_1/ReadVariableOp(model_6/conv2d_9/Conv2D_1/ReadVariableOp:Y U
/
_output_shapes
:?????????ZZ
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????ZZ
"
_user_specified_name
inputs/1
?
p
F__inference_subtract_3_layer_call_and_return_conditional_losses_102857

inputs
inputs_1
identityV
subSubinputsinputs_1*
T0*/
_output_shapes
:????????? W
IdentityIdentitysub:z:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:????????? :????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs:WS
/
_output_shapes
:????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_109
serving_default_input_10:0?????????ZZ
E
input_119
serving_default_input_11:0?????????ZZ;
dense_70
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
D
#_self_saveable_object_factories"
_tf_keras_input_layer
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network
?
#_self_saveable_object_factories
	variables
trainable_variables
 regularization_losses
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

"kernel
#bias
#$_self_saveable_object_factories
%	variables
&trainable_variables
'regularization_losses
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#)_self_saveable_object_factories
*	variables
+trainable_variables
,regularization_losses
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#._self_saveable_object_factories
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

3kernel
4bias
#5_self_saveable_object_factories
6	variables
7trainable_variables
8regularization_losses
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

:kernel
;bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
f
A0
B1
C2
D3
"4
#5
36
47
:8
;9"
trackable_list_wrapper
f
A0
B1
C2
D3
"4
#5
36
47
:8
;9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
D
#J_self_saveable_object_factories"
_tf_keras_input_layer
?

Akernel
Bbias
#K_self_saveable_object_factories
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#P_self_saveable_object_factories
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Ckernel
Dbias
#U_self_saveable_object_factories
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#Z_self_saveable_object_factories
[	variables
\trainable_variables
]regularization_losses
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_dict_wrapper
<
A0
B1
C2
D3"
trackable_list_wrapper
<
A0
B1
C2
D3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
 regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_11/kernel
: 2conv2d_11/bias
 "
trackable_dict_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
%	variables
&trainable_variables
'regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
*	variables
+trainable_variables
,regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
/	variables
0trainable_variables
1regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?@2dense_6/kernel
:@2dense_6/bias
 "
trackable_dict_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
?
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
6	variables
7trainable_variables
8regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_7/kernel
:2dense_7/bias
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
=	variables
>trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_9/kernel
: 2conv2d_9/bias
*:(  2conv2d_10/kernel
: 2conv2d_10/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
[	variables
\trainable_variables
]regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
C
0
1
2
3
4"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
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
?2?
(__inference_model_7_layer_call_fn_102948
(__inference_model_7_layer_call_fn_103239
(__inference_model_7_layer_call_fn_103265
(__inference_model_7_layer_call_fn_103111?
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
C__inference_model_7_layer_call_and_return_conditional_losses_103323
C__inference_model_7_layer_call_and_return_conditional_losses_103381
C__inference_model_7_layer_call_and_return_conditional_losses_103148
C__inference_model_7_layer_call_and_return_conditional_losses_103185?
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
?B?
!__inference__wrapped_model_102610input_10input_11"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_model_6_layer_call_fn_102699
(__inference_model_6_layer_call_fn_103394
(__inference_model_6_layer_call_fn_103407
(__inference_model_6_layer_call_fn_102784?
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
C__inference_model_6_layer_call_and_return_conditional_losses_103427
C__inference_model_6_layer_call_and_return_conditional_losses_103447
C__inference_model_6_layer_call_and_return_conditional_losses_102800
C__inference_model_6_layer_call_and_return_conditional_losses_102816?
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
?2?
+__inference_subtract_3_layer_call_fn_103453?
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
?2?
F__inference_subtract_3_layer_call_and_return_conditional_losses_103459?
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
?2?
*__inference_conv2d_11_layer_call_fn_103468?
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
?2?
E__inference_conv2d_11_layer_call_and_return_conditional_losses_103479?
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
?2?
1__inference_max_pooling2d_11_layer_call_fn_103484
1__inference_max_pooling2d_11_layer_call_fn_103489?
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
?2?
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_103494
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_103499?
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
?2?
*__inference_flatten_3_layer_call_fn_103504?
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
?2?
E__inference_flatten_3_layer_call_and_return_conditional_losses_103510?
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
?2?
(__inference_dense_6_layer_call_fn_103519?
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
?2?
C__inference_dense_6_layer_call_and_return_conditional_losses_103530?
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
?2?
(__inference_dense_7_layer_call_fn_103539?
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
?2?
C__inference_dense_7_layer_call_and_return_conditional_losses_103550?
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
?B?
$__inference_signature_wrapper_103213input_10input_11"?
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
?2?
)__inference_conv2d_9_layer_call_fn_103559?
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
?2?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_103570?
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
?2?
0__inference_max_pooling2d_9_layer_call_fn_103575
0__inference_max_pooling2d_9_layer_call_fn_103580?
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
?2?
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_103585
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_103590?
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
?2?
*__inference_conv2d_10_layer_call_fn_103599?
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
?2?
E__inference_conv2d_10_layer_call_and_return_conditional_losses_103610?
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
?2?
1__inference_max_pooling2d_10_layer_call_fn_103615
1__inference_max_pooling2d_10_layer_call_fn_103620?
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
?2?
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_103625
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_103630?
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
!__inference__wrapped_model_102610?
ABCD"#34:;j?g
`?]
[?X
*?'
input_10?????????ZZ
*?'
input_11?????????ZZ
? "1?.
,
dense_7!?
dense_7??????????
E__inference_conv2d_10_layer_call_and_return_conditional_losses_103610lCD7?4
-?*
(?%
inputs?????????-- 
? "-?*
#? 
0?????????-- 
? ?
*__inference_conv2d_10_layer_call_fn_103599_CD7?4
-?*
(?%
inputs?????????-- 
? " ??????????-- ?
E__inference_conv2d_11_layer_call_and_return_conditional_losses_103479l"#7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
*__inference_conv2d_11_layer_call_fn_103468_"#7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
D__inference_conv2d_9_layer_call_and_return_conditional_losses_103570lAB7?4
-?*
(?%
inputs?????????ZZ
? "-?*
#? 
0?????????ZZ 
? ?
)__inference_conv2d_9_layer_call_fn_103559_AB7?4
-?*
(?%
inputs?????????ZZ
? " ??????????ZZ ?
C__inference_dense_6_layer_call_and_return_conditional_losses_103530]340?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? |
(__inference_dense_6_layer_call_fn_103519P340?-
&?#
!?
inputs??????????
? "??????????@?
C__inference_dense_7_layer_call_and_return_conditional_losses_103550\:;/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? {
(__inference_dense_7_layer_call_fn_103539O:;/?,
%?"
 ?
inputs?????????@
? "???????????
E__inference_flatten_3_layer_call_and_return_conditional_losses_103510a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????
? ?
*__inference_flatten_3_layer_call_fn_103504T7?4
-?*
(?%
inputs????????? 
? "????????????
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_103625?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_103630h7?4
-?*
(?%
inputs?????????-- 
? "-?*
#? 
0????????? 
? ?
1__inference_max_pooling2d_10_layer_call_fn_103615?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
1__inference_max_pooling2d_10_layer_call_fn_103620[7?4
-?*
(?%
inputs?????????-- 
? " ?????????? ?
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_103494?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_103499h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
1__inference_max_pooling2d_11_layer_call_fn_103484?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
1__inference_max_pooling2d_11_layer_call_fn_103489[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_103585?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_103590h7?4
-?*
(?%
inputs?????????ZZ 
? "-?*
#? 
0?????????-- 
? ?
0__inference_max_pooling2d_9_layer_call_fn_103575?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
0__inference_max_pooling2d_9_layer_call_fn_103580[7?4
-?*
(?%
inputs?????????ZZ 
? " ??????????-- ?
C__inference_model_6_layer_call_and_return_conditional_losses_102800xABCDA?>
7?4
*?'
input_12?????????ZZ
p 

 
? "-?*
#? 
0????????? 
? ?
C__inference_model_6_layer_call_and_return_conditional_losses_102816xABCDA?>
7?4
*?'
input_12?????????ZZ
p

 
? "-?*
#? 
0????????? 
? ?
C__inference_model_6_layer_call_and_return_conditional_losses_103427vABCD??<
5?2
(?%
inputs?????????ZZ
p 

 
? "-?*
#? 
0????????? 
? ?
C__inference_model_6_layer_call_and_return_conditional_losses_103447vABCD??<
5?2
(?%
inputs?????????ZZ
p

 
? "-?*
#? 
0????????? 
? ?
(__inference_model_6_layer_call_fn_102699kABCDA?>
7?4
*?'
input_12?????????ZZ
p 

 
? " ?????????? ?
(__inference_model_6_layer_call_fn_102784kABCDA?>
7?4
*?'
input_12?????????ZZ
p

 
? " ?????????? ?
(__inference_model_6_layer_call_fn_103394iABCD??<
5?2
(?%
inputs?????????ZZ
p 

 
? " ?????????? ?
(__inference_model_6_layer_call_fn_103407iABCD??<
5?2
(?%
inputs?????????ZZ
p

 
? " ?????????? ?
C__inference_model_7_layer_call_and_return_conditional_losses_103148?
ABCD"#34:;r?o
h?e
[?X
*?'
input_10?????????ZZ
*?'
input_11?????????ZZ
p 

 
? "%?"
?
0?????????
? ?
C__inference_model_7_layer_call_and_return_conditional_losses_103185?
ABCD"#34:;r?o
h?e
[?X
*?'
input_10?????????ZZ
*?'
input_11?????????ZZ
p

 
? "%?"
?
0?????????
? ?
C__inference_model_7_layer_call_and_return_conditional_losses_103323?
ABCD"#34:;r?o
h?e
[?X
*?'
inputs/0?????????ZZ
*?'
inputs/1?????????ZZ
p 

 
? "%?"
?
0?????????
? ?
C__inference_model_7_layer_call_and_return_conditional_losses_103381?
ABCD"#34:;r?o
h?e
[?X
*?'
inputs/0?????????ZZ
*?'
inputs/1?????????ZZ
p

 
? "%?"
?
0?????????
? ?
(__inference_model_7_layer_call_fn_102948?
ABCD"#34:;r?o
h?e
[?X
*?'
input_10?????????ZZ
*?'
input_11?????????ZZ
p 

 
? "???????????
(__inference_model_7_layer_call_fn_103111?
ABCD"#34:;r?o
h?e
[?X
*?'
input_10?????????ZZ
*?'
input_11?????????ZZ
p

 
? "???????????
(__inference_model_7_layer_call_fn_103239?
ABCD"#34:;r?o
h?e
[?X
*?'
inputs/0?????????ZZ
*?'
inputs/1?????????ZZ
p 

 
? "???????????
(__inference_model_7_layer_call_fn_103265?
ABCD"#34:;r?o
h?e
[?X
*?'
inputs/0?????????ZZ
*?'
inputs/1?????????ZZ
p

 
? "???????????
$__inference_signature_wrapper_103213?
ABCD"#34:;}?z
? 
s?p
6
input_10*?'
input_10?????????ZZ
6
input_11*?'
input_11?????????ZZ"1?.
,
dense_7!?
dense_7??????????
F__inference_subtract_3_layer_call_and_return_conditional_losses_103459?j?g
`?]
[?X
*?'
inputs/0????????? 
*?'
inputs/1????????? 
? "-?*
#? 
0????????? 
? ?
+__inference_subtract_3_layer_call_fn_103453?j?g
`?]
[?X
*?'
inputs/0????????? 
*?'
inputs/1????????? 
? " ?????????? 