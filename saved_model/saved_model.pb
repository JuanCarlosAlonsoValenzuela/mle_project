ʽ)
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28ѯ(
?
rnn/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*%
shared_namernn/lstm_cell/kernel
~
(rnn/lstm_cell/kernel/Read/ReadVariableOpReadVariableOprnn/lstm_cell/kernel*
_output_shapes
:	?*
dtype0
?
rnn/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*/
shared_name rnn/lstm_cell/recurrent_kernel
?
2rnn/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOprnn/lstm_cell/recurrent_kernel* 
_output_shapes
:
??*
dtype0
}
rnn/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_namernn/lstm_cell/bias
v
&rnn/lstm_cell/bias/Read/ReadVariableOpReadVariableOprnn/lstm_cell/bias*
_output_shapes	
:?*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	?*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
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
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
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
?
Adam/rnn/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_nameAdam/rnn/lstm_cell/kernel/m
?
/Adam/rnn/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/rnn/lstm_cell/kernel/m*
_output_shapes
:	?*
dtype0
?
%Adam/rnn/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%Adam/rnn/lstm_cell/recurrent_kernel/m
?
9Adam/rnn/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp%Adam/rnn/lstm_cell/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/rnn/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/rnn/lstm_cell/bias/m
?
-Adam/rnn/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/rnn/lstm_cell/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	?*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/rnn/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_nameAdam/rnn/lstm_cell/kernel/v
?
/Adam/rnn/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/rnn/lstm_cell/kernel/v*
_output_shapes
:	?*
dtype0
?
%Adam/rnn/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%Adam/rnn/lstm_cell/recurrent_kernel/v
?
9Adam/rnn/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp%Adam/rnn/lstm_cell/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/rnn/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdam/rnn/lstm_cell/bias/v
?
-Adam/rnn/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/rnn/lstm_cell/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	?*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?!
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?!
value? B?  B? 
?
	lstm_cell
lstm_rnn
	dense
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
?


state_size

kernel
recurrent_kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	 decay
!learning_ratemAmBmCmDmEvFvGvHvIvJ
#
0
1
2
3
4
#
0
1
2
3
4
 
?
"non_trainable_variables

#layers
$metrics
%layer_regularization_losses
&layer_metrics
	variables
trainable_variables
regularization_losses
 
 
US
VARIABLE_VALUErnn/lstm_cell/kernel+lstm_cell/kernel/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUErnn/lstm_cell/recurrent_kernel5lstm_cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUErnn/lstm_cell/bias)lstm_cell/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
2

0
1
2
 
?
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
 

0
1
2

0
1
2
 
?

,states
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
IG
VARIABLE_VALUEdense/kernel'dense/kernel/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUE
dense/bias%dense/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
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
 

0
1
2

70
81
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
0
 
 
 
 
 
 
 
 
4
	9total
	:count
;	variables
<	keras_api
4
	=total
	>count
?	variables
@	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

90
:1

;	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

?	variables
xv
VARIABLE_VALUEAdam/rnn/lstm_cell/kernel/mGlstm_cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/rnn/lstm_cell/recurrent_kernel/mQlstm_cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/rnn/lstm_cell/bias/mElstm_cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense/kernel/mCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/dense/bias/mAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/rnn/lstm_cell/kernel/vGlstm_cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/rnn/lstm_cell/recurrent_kernel/vQlstm_cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/rnn/lstm_cell/bias/vElstm_cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense/kernel/vCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/dense/bias/vAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*+
_output_shapes
:?????????0*
dtype0* 
shape:?????????0
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1rnn/lstm_cell/kernelrnn/lstm_cell/recurrent_kernelrnn/lstm_cell/biasdense/kernel
dense/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_28394
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(rnn/lstm_cell/kernel/Read/ReadVariableOp2rnn/lstm_cell/recurrent_kernel/Read/ReadVariableOp&rnn/lstm_cell/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/rnn/lstm_cell/kernel/m/Read/ReadVariableOp9Adam/rnn/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp-Adam/rnn/lstm_cell/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp/Adam/rnn/lstm_cell/kernel/v/Read/ReadVariableOp9Adam/rnn/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp-Adam/rnn/lstm_cell/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_30822
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamernn/lstm_cell/kernelrnn/lstm_cell/recurrent_kernelrnn/lstm_cell/biasdense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/rnn/lstm_cell/kernel/m%Adam/rnn/lstm_cell/recurrent_kernel/mAdam/rnn/lstm_cell/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/rnn/lstm_cell/kernel/v%Adam/rnn/lstm_cell/recurrent_kernel/vAdam/rnn/lstm_cell/bias/vAdam/dense/kernel/vAdam/dense/bias/v*$
Tin
2*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_30904??'
?6
?
while_body_30479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
??@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?D
0while_lstm_cell_matmul_1_readvariableop_resource:
??>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:???????????
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????o
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:???????????
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????l
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
#__inference_rnn_layer_call_fn_30132

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_27629p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?J
?
>__inference_rnn_layer_call_and_return_conditional_losses_30420
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	?>
*lstm_cell_matmul_1_readvariableop_resource:
??8
)lstm_cell_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:??????????k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:??????????r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????c
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*(
_output_shapes
:??????????t
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30335*
condR
while_cond_30334*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:??????????`

Identity_2Identitywhile:output:5^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?6
?
while_body_30335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
??@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?D
0while_lstm_cell_matmul_1_readvariableop_resource:
??>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:???????????
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????o
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:???????????
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????l
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_30040

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
??
?
D__inference_feed_back_layer_call_and_return_conditional_losses_28371
input_1
	rnn_28146:	?
	rnn_28148:
??
	rnn_28150:	?
dense_28155:	?
dense_28157:
identity??dense/StatefulPartitionedCall?dense/StatefulPartitionedCall_1? dense/StatefulPartitionedCall_10? dense/StatefulPartitionedCall_11? dense/StatefulPartitionedCall_12? dense/StatefulPartitionedCall_13? dense/StatefulPartitionedCall_14? dense/StatefulPartitionedCall_15? dense/StatefulPartitionedCall_16? dense/StatefulPartitionedCall_17? dense/StatefulPartitionedCall_18? dense/StatefulPartitionedCall_19?dense/StatefulPartitionedCall_2? dense/StatefulPartitionedCall_20? dense/StatefulPartitionedCall_21? dense/StatefulPartitionedCall_22? dense/StatefulPartitionedCall_23?dense/StatefulPartitionedCall_3?dense/StatefulPartitionedCall_4?dense/StatefulPartitionedCall_5?dense/StatefulPartitionedCall_6?dense/StatefulPartitionedCall_7?dense/StatefulPartitionedCall_8?dense/StatefulPartitionedCall_9?!lstm_cell/StatefulPartitionedCall?#lstm_cell/StatefulPartitionedCall_1?$lstm_cell/StatefulPartitionedCall_10?$lstm_cell/StatefulPartitionedCall_11?$lstm_cell/StatefulPartitionedCall_12?$lstm_cell/StatefulPartitionedCall_13?$lstm_cell/StatefulPartitionedCall_14?$lstm_cell/StatefulPartitionedCall_15?$lstm_cell/StatefulPartitionedCall_16?$lstm_cell/StatefulPartitionedCall_17?$lstm_cell/StatefulPartitionedCall_18?$lstm_cell/StatefulPartitionedCall_19?#lstm_cell/StatefulPartitionedCall_2?$lstm_cell/StatefulPartitionedCall_20?$lstm_cell/StatefulPartitionedCall_21?$lstm_cell/StatefulPartitionedCall_22?#lstm_cell/StatefulPartitionedCall_3?#lstm_cell/StatefulPartitionedCall_4?#lstm_cell/StatefulPartitionedCall_5?#lstm_cell/StatefulPartitionedCall_6?#lstm_cell/StatefulPartitionedCall_7?#lstm_cell/StatefulPartitionedCall_8?#lstm_cell/StatefulPartitionedCall_9?rnn/StatefulPartitionedCall?
rnn/StatefulPartitionedCallStatefulPartitionedCallinput_1	rnn_28146	rnn_28148	rnn_28150*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_27629?
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0$rnn/StatefulPartitionedCall:output:1$rnn/StatefulPartitionedCall:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_1StatefulPartitionedCall*lstm_cell/StatefulPartitionedCall:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_1StatefulPartitionedCall(dense/StatefulPartitionedCall_1:output:0*lstm_cell/StatefulPartitionedCall:output:1*lstm_cell/StatefulPartitionedCall:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_2StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_1:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_2StatefulPartitionedCall(dense/StatefulPartitionedCall_2:output:0,lstm_cell/StatefulPartitionedCall_1:output:1,lstm_cell/StatefulPartitionedCall_1:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_3StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_2:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_3StatefulPartitionedCall(dense/StatefulPartitionedCall_3:output:0,lstm_cell/StatefulPartitionedCall_2:output:1,lstm_cell/StatefulPartitionedCall_2:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_4StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_3:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_4StatefulPartitionedCall(dense/StatefulPartitionedCall_4:output:0,lstm_cell/StatefulPartitionedCall_3:output:1,lstm_cell/StatefulPartitionedCall_3:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_5StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_4:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_5StatefulPartitionedCall(dense/StatefulPartitionedCall_5:output:0,lstm_cell/StatefulPartitionedCall_4:output:1,lstm_cell/StatefulPartitionedCall_4:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_6StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_5:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_6StatefulPartitionedCall(dense/StatefulPartitionedCall_6:output:0,lstm_cell/StatefulPartitionedCall_5:output:1,lstm_cell/StatefulPartitionedCall_5:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_7StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_6:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_7StatefulPartitionedCall(dense/StatefulPartitionedCall_7:output:0,lstm_cell/StatefulPartitionedCall_6:output:1,lstm_cell/StatefulPartitionedCall_6:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_8StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_7:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_8StatefulPartitionedCall(dense/StatefulPartitionedCall_8:output:0,lstm_cell/StatefulPartitionedCall_7:output:1,lstm_cell/StatefulPartitionedCall_7:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_9StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_8:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_9StatefulPartitionedCall(dense/StatefulPartitionedCall_9:output:0,lstm_cell/StatefulPartitionedCall_8:output:1,lstm_cell/StatefulPartitionedCall_8:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_10StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_9:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_10StatefulPartitionedCall)dense/StatefulPartitionedCall_10:output:0,lstm_cell/StatefulPartitionedCall_9:output:1,lstm_cell/StatefulPartitionedCall_9:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_11StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_10:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_11StatefulPartitionedCall)dense/StatefulPartitionedCall_11:output:0-lstm_cell/StatefulPartitionedCall_10:output:1-lstm_cell/StatefulPartitionedCall_10:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_12StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_11:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_12StatefulPartitionedCall)dense/StatefulPartitionedCall_12:output:0-lstm_cell/StatefulPartitionedCall_11:output:1-lstm_cell/StatefulPartitionedCall_11:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_13StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_12:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_13StatefulPartitionedCall)dense/StatefulPartitionedCall_13:output:0-lstm_cell/StatefulPartitionedCall_12:output:1-lstm_cell/StatefulPartitionedCall_12:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_14StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_13:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_14StatefulPartitionedCall)dense/StatefulPartitionedCall_14:output:0-lstm_cell/StatefulPartitionedCall_13:output:1-lstm_cell/StatefulPartitionedCall_13:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_15StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_14:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_15StatefulPartitionedCall)dense/StatefulPartitionedCall_15:output:0-lstm_cell/StatefulPartitionedCall_14:output:1-lstm_cell/StatefulPartitionedCall_14:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_16StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_15:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_16StatefulPartitionedCall)dense/StatefulPartitionedCall_16:output:0-lstm_cell/StatefulPartitionedCall_15:output:1-lstm_cell/StatefulPartitionedCall_15:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_17StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_16:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_17StatefulPartitionedCall)dense/StatefulPartitionedCall_17:output:0-lstm_cell/StatefulPartitionedCall_16:output:1-lstm_cell/StatefulPartitionedCall_16:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_18StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_17:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_18StatefulPartitionedCall)dense/StatefulPartitionedCall_18:output:0-lstm_cell/StatefulPartitionedCall_17:output:1-lstm_cell/StatefulPartitionedCall_17:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_19StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_18:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_19StatefulPartitionedCall)dense/StatefulPartitionedCall_19:output:0-lstm_cell/StatefulPartitionedCall_18:output:1-lstm_cell/StatefulPartitionedCall_18:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_20StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_19:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_20StatefulPartitionedCall)dense/StatefulPartitionedCall_20:output:0-lstm_cell/StatefulPartitionedCall_19:output:1-lstm_cell/StatefulPartitionedCall_19:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_21StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_20:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_21StatefulPartitionedCall)dense/StatefulPartitionedCall_21:output:0-lstm_cell/StatefulPartitionedCall_20:output:1-lstm_cell/StatefulPartitionedCall_20:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_22StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_21:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_22StatefulPartitionedCall)dense/StatefulPartitionedCall_22:output:0-lstm_cell/StatefulPartitionedCall_21:output:1-lstm_cell/StatefulPartitionedCall_21:output:2	rnn_28146	rnn_28148	rnn_28150*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_23StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_22:output:0dense_28155dense_28157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
stackPack&dense/StatefulPartitionedCall:output:0(dense/StatefulPartitionedCall_1:output:0(dense/StatefulPartitionedCall_2:output:0(dense/StatefulPartitionedCall_3:output:0(dense/StatefulPartitionedCall_4:output:0(dense/StatefulPartitionedCall_5:output:0(dense/StatefulPartitionedCall_6:output:0(dense/StatefulPartitionedCall_7:output:0(dense/StatefulPartitionedCall_8:output:0(dense/StatefulPartitionedCall_9:output:0)dense/StatefulPartitionedCall_10:output:0)dense/StatefulPartitionedCall_11:output:0)dense/StatefulPartitionedCall_12:output:0)dense/StatefulPartitionedCall_13:output:0)dense/StatefulPartitionedCall_14:output:0)dense/StatefulPartitionedCall_15:output:0)dense/StatefulPartitionedCall_16:output:0)dense/StatefulPartitionedCall_17:output:0)dense/StatefulPartitionedCall_18:output:0)dense/StatefulPartitionedCall_19:output:0)dense/StatefulPartitionedCall_20:output:0)dense/StatefulPartitionedCall_21:output:0)dense/StatefulPartitionedCall_22:output:0)dense/StatefulPartitionedCall_23:output:0*
N*
T0*+
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:?????????`
IdentityIdentitytranspose:y:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense/StatefulPartitionedCall_1!^dense/StatefulPartitionedCall_10!^dense/StatefulPartitionedCall_11!^dense/StatefulPartitionedCall_12!^dense/StatefulPartitionedCall_13!^dense/StatefulPartitionedCall_14!^dense/StatefulPartitionedCall_15!^dense/StatefulPartitionedCall_16!^dense/StatefulPartitionedCall_17!^dense/StatefulPartitionedCall_18!^dense/StatefulPartitionedCall_19 ^dense/StatefulPartitionedCall_2!^dense/StatefulPartitionedCall_20!^dense/StatefulPartitionedCall_21!^dense/StatefulPartitionedCall_22!^dense/StatefulPartitionedCall_23 ^dense/StatefulPartitionedCall_3 ^dense/StatefulPartitionedCall_4 ^dense/StatefulPartitionedCall_5 ^dense/StatefulPartitionedCall_6 ^dense/StatefulPartitionedCall_7 ^dense/StatefulPartitionedCall_8 ^dense/StatefulPartitionedCall_9"^lstm_cell/StatefulPartitionedCall$^lstm_cell/StatefulPartitionedCall_1%^lstm_cell/StatefulPartitionedCall_10%^lstm_cell/StatefulPartitionedCall_11%^lstm_cell/StatefulPartitionedCall_12%^lstm_cell/StatefulPartitionedCall_13%^lstm_cell/StatefulPartitionedCall_14%^lstm_cell/StatefulPartitionedCall_15%^lstm_cell/StatefulPartitionedCall_16%^lstm_cell/StatefulPartitionedCall_17%^lstm_cell/StatefulPartitionedCall_18%^lstm_cell/StatefulPartitionedCall_19$^lstm_cell/StatefulPartitionedCall_2%^lstm_cell/StatefulPartitionedCall_20%^lstm_cell/StatefulPartitionedCall_21%^lstm_cell/StatefulPartitionedCall_22$^lstm_cell/StatefulPartitionedCall_3$^lstm_cell/StatefulPartitionedCall_4$^lstm_cell/StatefulPartitionedCall_5$^lstm_cell/StatefulPartitionedCall_6$^lstm_cell/StatefulPartitionedCall_7$^lstm_cell/StatefulPartitionedCall_8$^lstm_cell/StatefulPartitionedCall_9^rnn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????0: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense/StatefulPartitionedCall_1dense/StatefulPartitionedCall_12D
 dense/StatefulPartitionedCall_10 dense/StatefulPartitionedCall_102D
 dense/StatefulPartitionedCall_11 dense/StatefulPartitionedCall_112D
 dense/StatefulPartitionedCall_12 dense/StatefulPartitionedCall_122D
 dense/StatefulPartitionedCall_13 dense/StatefulPartitionedCall_132D
 dense/StatefulPartitionedCall_14 dense/StatefulPartitionedCall_142D
 dense/StatefulPartitionedCall_15 dense/StatefulPartitionedCall_152D
 dense/StatefulPartitionedCall_16 dense/StatefulPartitionedCall_162D
 dense/StatefulPartitionedCall_17 dense/StatefulPartitionedCall_172D
 dense/StatefulPartitionedCall_18 dense/StatefulPartitionedCall_182D
 dense/StatefulPartitionedCall_19 dense/StatefulPartitionedCall_192B
dense/StatefulPartitionedCall_2dense/StatefulPartitionedCall_22D
 dense/StatefulPartitionedCall_20 dense/StatefulPartitionedCall_202D
 dense/StatefulPartitionedCall_21 dense/StatefulPartitionedCall_212D
 dense/StatefulPartitionedCall_22 dense/StatefulPartitionedCall_222D
 dense/StatefulPartitionedCall_23 dense/StatefulPartitionedCall_232B
dense/StatefulPartitionedCall_3dense/StatefulPartitionedCall_32B
dense/StatefulPartitionedCall_4dense/StatefulPartitionedCall_42B
dense/StatefulPartitionedCall_5dense/StatefulPartitionedCall_52B
dense/StatefulPartitionedCall_6dense/StatefulPartitionedCall_62B
dense/StatefulPartitionedCall_7dense/StatefulPartitionedCall_72B
dense/StatefulPartitionedCall_8dense/StatefulPartitionedCall_82B
dense/StatefulPartitionedCall_9dense/StatefulPartitionedCall_92F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2J
#lstm_cell/StatefulPartitionedCall_1#lstm_cell/StatefulPartitionedCall_12L
$lstm_cell/StatefulPartitionedCall_10$lstm_cell/StatefulPartitionedCall_102L
$lstm_cell/StatefulPartitionedCall_11$lstm_cell/StatefulPartitionedCall_112L
$lstm_cell/StatefulPartitionedCall_12$lstm_cell/StatefulPartitionedCall_122L
$lstm_cell/StatefulPartitionedCall_13$lstm_cell/StatefulPartitionedCall_132L
$lstm_cell/StatefulPartitionedCall_14$lstm_cell/StatefulPartitionedCall_142L
$lstm_cell/StatefulPartitionedCall_15$lstm_cell/StatefulPartitionedCall_152L
$lstm_cell/StatefulPartitionedCall_16$lstm_cell/StatefulPartitionedCall_162L
$lstm_cell/StatefulPartitionedCall_17$lstm_cell/StatefulPartitionedCall_172L
$lstm_cell/StatefulPartitionedCall_18$lstm_cell/StatefulPartitionedCall_182L
$lstm_cell/StatefulPartitionedCall_19$lstm_cell/StatefulPartitionedCall_192J
#lstm_cell/StatefulPartitionedCall_2#lstm_cell/StatefulPartitionedCall_22L
$lstm_cell/StatefulPartitionedCall_20$lstm_cell/StatefulPartitionedCall_202L
$lstm_cell/StatefulPartitionedCall_21$lstm_cell/StatefulPartitionedCall_212L
$lstm_cell/StatefulPartitionedCall_22$lstm_cell/StatefulPartitionedCall_222J
#lstm_cell/StatefulPartitionedCall_3#lstm_cell/StatefulPartitionedCall_32J
#lstm_cell/StatefulPartitionedCall_4#lstm_cell/StatefulPartitionedCall_42J
#lstm_cell/StatefulPartitionedCall_5#lstm_cell/StatefulPartitionedCall_52J
#lstm_cell/StatefulPartitionedCall_6#lstm_cell/StatefulPartitionedCall_62J
#lstm_cell/StatefulPartitionedCall_7#lstm_cell/StatefulPartitionedCall_72J
#lstm_cell/StatefulPartitionedCall_8#lstm_cell/StatefulPartitionedCall_82J
#lstm_cell/StatefulPartitionedCall_9#lstm_cell/StatefulPartitionedCall_92:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:T P
+
_output_shapes
:?????????0
!
_user_specified_name	input_1
?`
?
!__inference__traced_restore_30904
file_prefix8
%assignvariableop_rnn_lstm_cell_kernel:	?E
1assignvariableop_1_rnn_lstm_cell_recurrent_kernel:
??4
%assignvariableop_2_rnn_lstm_cell_bias:	?2
assignvariableop_3_dense_kernel:	?+
assignvariableop_4_dense_bias:&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: #
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: B
/assignvariableop_14_adam_rnn_lstm_cell_kernel_m:	?M
9assignvariableop_15_adam_rnn_lstm_cell_recurrent_kernel_m:
??<
-assignvariableop_16_adam_rnn_lstm_cell_bias_m:	?:
'assignvariableop_17_adam_dense_kernel_m:	?3
%assignvariableop_18_adam_dense_bias_m:B
/assignvariableop_19_adam_rnn_lstm_cell_kernel_v:	?M
9assignvariableop_20_adam_rnn_lstm_cell_recurrent_kernel_v:
??<
-assignvariableop_21_adam_rnn_lstm_cell_bias_v:	?:
'assignvariableop_22_adam_dense_kernel_v:	?3
%assignvariableop_23_adam_dense_bias_v:
identity_25??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B+lstm_cell/kernel/.ATTRIBUTES/VARIABLE_VALUEB5lstm_cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB)lstm_cell/bias/.ATTRIBUTES/VARIABLE_VALUEB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBGlstm_cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlstm_cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElstm_cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGlstm_cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlstm_cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElstm_cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp%assignvariableop_rnn_lstm_cell_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp1assignvariableop_1_rnn_lstm_cell_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp%assignvariableop_2_rnn_lstm_cell_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
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
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp/assignvariableop_14_adam_rnn_lstm_cell_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp9assignvariableop_15_adam_rnn_lstm_cell_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp-assignvariableop_16_adam_rnn_lstm_cell_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_dense_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp/assignvariableop_19_adam_rnn_lstm_cell_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp9assignvariableop_20_adam_rnn_lstm_cell_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_rnn_lstm_cell_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp%assignvariableop_23_adam_dense_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
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
?"
?
while_body_27070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_27094_0:	?+
while_lstm_cell_27096_0:
??&
while_lstm_cell_27098_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_27094:	?)
while_lstm_cell_27096:
??$
while_lstm_cell_27098:	???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_27094_0while_lstm_cell_27096_0while_lstm_cell_27098_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_26727?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:???????????
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:??????????v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_27094while_lstm_cell_27094_0"0
while_lstm_cell_27096while_lstm_cell_27096_0"0
while_lstm_cell_27098while_lstm_cell_27098_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
#__inference_rnn_layer_call_fn_30102
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_27007p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_26727

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
)__inference_lstm_cell_layer_call_fn_29893

inputs
states_0
states_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_26727p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
??
?
D__inference_feed_back_layer_call_and_return_conditional_losses_27887

inputs
	rnn_27662:	?
	rnn_27664:
??
	rnn_27666:	?
dense_27671:	?
dense_27673:
identity??dense/StatefulPartitionedCall?dense/StatefulPartitionedCall_1? dense/StatefulPartitionedCall_10? dense/StatefulPartitionedCall_11? dense/StatefulPartitionedCall_12? dense/StatefulPartitionedCall_13? dense/StatefulPartitionedCall_14? dense/StatefulPartitionedCall_15? dense/StatefulPartitionedCall_16? dense/StatefulPartitionedCall_17? dense/StatefulPartitionedCall_18? dense/StatefulPartitionedCall_19?dense/StatefulPartitionedCall_2? dense/StatefulPartitionedCall_20? dense/StatefulPartitionedCall_21? dense/StatefulPartitionedCall_22? dense/StatefulPartitionedCall_23?dense/StatefulPartitionedCall_3?dense/StatefulPartitionedCall_4?dense/StatefulPartitionedCall_5?dense/StatefulPartitionedCall_6?dense/StatefulPartitionedCall_7?dense/StatefulPartitionedCall_8?dense/StatefulPartitionedCall_9?!lstm_cell/StatefulPartitionedCall?#lstm_cell/StatefulPartitionedCall_1?$lstm_cell/StatefulPartitionedCall_10?$lstm_cell/StatefulPartitionedCall_11?$lstm_cell/StatefulPartitionedCall_12?$lstm_cell/StatefulPartitionedCall_13?$lstm_cell/StatefulPartitionedCall_14?$lstm_cell/StatefulPartitionedCall_15?$lstm_cell/StatefulPartitionedCall_16?$lstm_cell/StatefulPartitionedCall_17?$lstm_cell/StatefulPartitionedCall_18?$lstm_cell/StatefulPartitionedCall_19?#lstm_cell/StatefulPartitionedCall_2?$lstm_cell/StatefulPartitionedCall_20?$lstm_cell/StatefulPartitionedCall_21?$lstm_cell/StatefulPartitionedCall_22?#lstm_cell/StatefulPartitionedCall_3?#lstm_cell/StatefulPartitionedCall_4?#lstm_cell/StatefulPartitionedCall_5?#lstm_cell/StatefulPartitionedCall_6?#lstm_cell/StatefulPartitionedCall_7?#lstm_cell/StatefulPartitionedCall_8?#lstm_cell/StatefulPartitionedCall_9?rnn/StatefulPartitionedCall?
rnn/StatefulPartitionedCallStatefulPartitionedCallinputs	rnn_27662	rnn_27664	rnn_27666*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_27629?
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0$rnn/StatefulPartitionedCall:output:1$rnn/StatefulPartitionedCall:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_1StatefulPartitionedCall*lstm_cell/StatefulPartitionedCall:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_1StatefulPartitionedCall(dense/StatefulPartitionedCall_1:output:0*lstm_cell/StatefulPartitionedCall:output:1*lstm_cell/StatefulPartitionedCall:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_2StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_1:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_2StatefulPartitionedCall(dense/StatefulPartitionedCall_2:output:0,lstm_cell/StatefulPartitionedCall_1:output:1,lstm_cell/StatefulPartitionedCall_1:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_3StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_2:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_3StatefulPartitionedCall(dense/StatefulPartitionedCall_3:output:0,lstm_cell/StatefulPartitionedCall_2:output:1,lstm_cell/StatefulPartitionedCall_2:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_4StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_3:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_4StatefulPartitionedCall(dense/StatefulPartitionedCall_4:output:0,lstm_cell/StatefulPartitionedCall_3:output:1,lstm_cell/StatefulPartitionedCall_3:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_5StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_4:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_5StatefulPartitionedCall(dense/StatefulPartitionedCall_5:output:0,lstm_cell/StatefulPartitionedCall_4:output:1,lstm_cell/StatefulPartitionedCall_4:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_6StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_5:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_6StatefulPartitionedCall(dense/StatefulPartitionedCall_6:output:0,lstm_cell/StatefulPartitionedCall_5:output:1,lstm_cell/StatefulPartitionedCall_5:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_7StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_6:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_7StatefulPartitionedCall(dense/StatefulPartitionedCall_7:output:0,lstm_cell/StatefulPartitionedCall_6:output:1,lstm_cell/StatefulPartitionedCall_6:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_8StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_7:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_8StatefulPartitionedCall(dense/StatefulPartitionedCall_8:output:0,lstm_cell/StatefulPartitionedCall_7:output:1,lstm_cell/StatefulPartitionedCall_7:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
dense/StatefulPartitionedCall_9StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_8:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_9StatefulPartitionedCall(dense/StatefulPartitionedCall_9:output:0,lstm_cell/StatefulPartitionedCall_8:output:1,lstm_cell/StatefulPartitionedCall_8:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_10StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_9:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_10StatefulPartitionedCall)dense/StatefulPartitionedCall_10:output:0,lstm_cell/StatefulPartitionedCall_9:output:1,lstm_cell/StatefulPartitionedCall_9:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_11StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_10:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_11StatefulPartitionedCall)dense/StatefulPartitionedCall_11:output:0-lstm_cell/StatefulPartitionedCall_10:output:1-lstm_cell/StatefulPartitionedCall_10:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_12StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_11:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_12StatefulPartitionedCall)dense/StatefulPartitionedCall_12:output:0-lstm_cell/StatefulPartitionedCall_11:output:1-lstm_cell/StatefulPartitionedCall_11:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_13StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_12:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_13StatefulPartitionedCall)dense/StatefulPartitionedCall_13:output:0-lstm_cell/StatefulPartitionedCall_12:output:1-lstm_cell/StatefulPartitionedCall_12:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_14StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_13:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_14StatefulPartitionedCall)dense/StatefulPartitionedCall_14:output:0-lstm_cell/StatefulPartitionedCall_13:output:1-lstm_cell/StatefulPartitionedCall_13:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_15StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_14:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_15StatefulPartitionedCall)dense/StatefulPartitionedCall_15:output:0-lstm_cell/StatefulPartitionedCall_14:output:1-lstm_cell/StatefulPartitionedCall_14:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_16StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_15:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_16StatefulPartitionedCall)dense/StatefulPartitionedCall_16:output:0-lstm_cell/StatefulPartitionedCall_15:output:1-lstm_cell/StatefulPartitionedCall_15:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_17StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_16:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_17StatefulPartitionedCall)dense/StatefulPartitionedCall_17:output:0-lstm_cell/StatefulPartitionedCall_16:output:1-lstm_cell/StatefulPartitionedCall_16:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_18StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_17:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_18StatefulPartitionedCall)dense/StatefulPartitionedCall_18:output:0-lstm_cell/StatefulPartitionedCall_17:output:1-lstm_cell/StatefulPartitionedCall_17:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_19StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_18:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_19StatefulPartitionedCall)dense/StatefulPartitionedCall_19:output:0-lstm_cell/StatefulPartitionedCall_18:output:1-lstm_cell/StatefulPartitionedCall_18:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_20StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_19:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_20StatefulPartitionedCall)dense/StatefulPartitionedCall_20:output:0-lstm_cell/StatefulPartitionedCall_19:output:1-lstm_cell/StatefulPartitionedCall_19:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_21StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_20:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_21StatefulPartitionedCall)dense/StatefulPartitionedCall_21:output:0-lstm_cell/StatefulPartitionedCall_20:output:1-lstm_cell/StatefulPartitionedCall_20:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_22StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_21:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_22StatefulPartitionedCall)dense/StatefulPartitionedCall_22:output:0-lstm_cell/StatefulPartitionedCall_21:output:1-lstm_cell/StatefulPartitionedCall_21:output:2	rnn_27662	rnn_27664	rnn_27666*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485?
 dense/StatefulPartitionedCall_23StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_22:output:0dense_27671dense_27673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
stackPack&dense/StatefulPartitionedCall:output:0(dense/StatefulPartitionedCall_1:output:0(dense/StatefulPartitionedCall_2:output:0(dense/StatefulPartitionedCall_3:output:0(dense/StatefulPartitionedCall_4:output:0(dense/StatefulPartitionedCall_5:output:0(dense/StatefulPartitionedCall_6:output:0(dense/StatefulPartitionedCall_7:output:0(dense/StatefulPartitionedCall_8:output:0(dense/StatefulPartitionedCall_9:output:0)dense/StatefulPartitionedCall_10:output:0)dense/StatefulPartitionedCall_11:output:0)dense/StatefulPartitionedCall_12:output:0)dense/StatefulPartitionedCall_13:output:0)dense/StatefulPartitionedCall_14:output:0)dense/StatefulPartitionedCall_15:output:0)dense/StatefulPartitionedCall_16:output:0)dense/StatefulPartitionedCall_17:output:0)dense/StatefulPartitionedCall_18:output:0)dense/StatefulPartitionedCall_19:output:0)dense/StatefulPartitionedCall_20:output:0)dense/StatefulPartitionedCall_21:output:0)dense/StatefulPartitionedCall_22:output:0)dense/StatefulPartitionedCall_23:output:0*
N*
T0*+
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:?????????`
IdentityIdentitytranspose:y:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense/StatefulPartitionedCall_1!^dense/StatefulPartitionedCall_10!^dense/StatefulPartitionedCall_11!^dense/StatefulPartitionedCall_12!^dense/StatefulPartitionedCall_13!^dense/StatefulPartitionedCall_14!^dense/StatefulPartitionedCall_15!^dense/StatefulPartitionedCall_16!^dense/StatefulPartitionedCall_17!^dense/StatefulPartitionedCall_18!^dense/StatefulPartitionedCall_19 ^dense/StatefulPartitionedCall_2!^dense/StatefulPartitionedCall_20!^dense/StatefulPartitionedCall_21!^dense/StatefulPartitionedCall_22!^dense/StatefulPartitionedCall_23 ^dense/StatefulPartitionedCall_3 ^dense/StatefulPartitionedCall_4 ^dense/StatefulPartitionedCall_5 ^dense/StatefulPartitionedCall_6 ^dense/StatefulPartitionedCall_7 ^dense/StatefulPartitionedCall_8 ^dense/StatefulPartitionedCall_9"^lstm_cell/StatefulPartitionedCall$^lstm_cell/StatefulPartitionedCall_1%^lstm_cell/StatefulPartitionedCall_10%^lstm_cell/StatefulPartitionedCall_11%^lstm_cell/StatefulPartitionedCall_12%^lstm_cell/StatefulPartitionedCall_13%^lstm_cell/StatefulPartitionedCall_14%^lstm_cell/StatefulPartitionedCall_15%^lstm_cell/StatefulPartitionedCall_16%^lstm_cell/StatefulPartitionedCall_17%^lstm_cell/StatefulPartitionedCall_18%^lstm_cell/StatefulPartitionedCall_19$^lstm_cell/StatefulPartitionedCall_2%^lstm_cell/StatefulPartitionedCall_20%^lstm_cell/StatefulPartitionedCall_21%^lstm_cell/StatefulPartitionedCall_22$^lstm_cell/StatefulPartitionedCall_3$^lstm_cell/StatefulPartitionedCall_4$^lstm_cell/StatefulPartitionedCall_5$^lstm_cell/StatefulPartitionedCall_6$^lstm_cell/StatefulPartitionedCall_7$^lstm_cell/StatefulPartitionedCall_8$^lstm_cell/StatefulPartitionedCall_9^rnn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????0: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense/StatefulPartitionedCall_1dense/StatefulPartitionedCall_12D
 dense/StatefulPartitionedCall_10 dense/StatefulPartitionedCall_102D
 dense/StatefulPartitionedCall_11 dense/StatefulPartitionedCall_112D
 dense/StatefulPartitionedCall_12 dense/StatefulPartitionedCall_122D
 dense/StatefulPartitionedCall_13 dense/StatefulPartitionedCall_132D
 dense/StatefulPartitionedCall_14 dense/StatefulPartitionedCall_142D
 dense/StatefulPartitionedCall_15 dense/StatefulPartitionedCall_152D
 dense/StatefulPartitionedCall_16 dense/StatefulPartitionedCall_162D
 dense/StatefulPartitionedCall_17 dense/StatefulPartitionedCall_172D
 dense/StatefulPartitionedCall_18 dense/StatefulPartitionedCall_182D
 dense/StatefulPartitionedCall_19 dense/StatefulPartitionedCall_192B
dense/StatefulPartitionedCall_2dense/StatefulPartitionedCall_22D
 dense/StatefulPartitionedCall_20 dense/StatefulPartitionedCall_202D
 dense/StatefulPartitionedCall_21 dense/StatefulPartitionedCall_212D
 dense/StatefulPartitionedCall_22 dense/StatefulPartitionedCall_222D
 dense/StatefulPartitionedCall_23 dense/StatefulPartitionedCall_232B
dense/StatefulPartitionedCall_3dense/StatefulPartitionedCall_32B
dense/StatefulPartitionedCall_4dense/StatefulPartitionedCall_42B
dense/StatefulPartitionedCall_5dense/StatefulPartitionedCall_52B
dense/StatefulPartitionedCall_6dense/StatefulPartitionedCall_62B
dense/StatefulPartitionedCall_7dense/StatefulPartitionedCall_72B
dense/StatefulPartitionedCall_8dense/StatefulPartitionedCall_82B
dense/StatefulPartitionedCall_9dense/StatefulPartitionedCall_92F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2J
#lstm_cell/StatefulPartitionedCall_1#lstm_cell/StatefulPartitionedCall_12L
$lstm_cell/StatefulPartitionedCall_10$lstm_cell/StatefulPartitionedCall_102L
$lstm_cell/StatefulPartitionedCall_11$lstm_cell/StatefulPartitionedCall_112L
$lstm_cell/StatefulPartitionedCall_12$lstm_cell/StatefulPartitionedCall_122L
$lstm_cell/StatefulPartitionedCall_13$lstm_cell/StatefulPartitionedCall_132L
$lstm_cell/StatefulPartitionedCall_14$lstm_cell/StatefulPartitionedCall_142L
$lstm_cell/StatefulPartitionedCall_15$lstm_cell/StatefulPartitionedCall_152L
$lstm_cell/StatefulPartitionedCall_16$lstm_cell/StatefulPartitionedCall_162L
$lstm_cell/StatefulPartitionedCall_17$lstm_cell/StatefulPartitionedCall_172L
$lstm_cell/StatefulPartitionedCall_18$lstm_cell/StatefulPartitionedCall_182L
$lstm_cell/StatefulPartitionedCall_19$lstm_cell/StatefulPartitionedCall_192J
#lstm_cell/StatefulPartitionedCall_2#lstm_cell/StatefulPartitionedCall_22L
$lstm_cell/StatefulPartitionedCall_20$lstm_cell/StatefulPartitionedCall_202L
$lstm_cell/StatefulPartitionedCall_21$lstm_cell/StatefulPartitionedCall_212L
$lstm_cell/StatefulPartitionedCall_22$lstm_cell/StatefulPartitionedCall_222J
#lstm_cell/StatefulPartitionedCall_3#lstm_cell/StatefulPartitionedCall_32J
#lstm_cell/StatefulPartitionedCall_4#lstm_cell/StatefulPartitionedCall_42J
#lstm_cell/StatefulPartitionedCall_5#lstm_cell/StatefulPartitionedCall_52J
#lstm_cell/StatefulPartitionedCall_6#lstm_cell/StatefulPartitionedCall_62J
#lstm_cell/StatefulPartitionedCall_7#lstm_cell/StatefulPartitionedCall_72J
#lstm_cell/StatefulPartitionedCall_8#lstm_cell/StatefulPartitionedCall_82J
#lstm_cell/StatefulPartitionedCall_9#lstm_cell/StatefulPartitionedCall_92:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?"
?
while_body_26937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_26961_0:	?+
while_lstm_cell_26963_0:
??&
while_lstm_cell_26965_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_26961:	?)
while_lstm_cell_26963:
??$
while_lstm_cell_26965:	???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_26961_0while_lstm_cell_26963_0while_lstm_cell_26965_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_26878?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:???????????
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:??????????v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_26961while_lstm_cell_26961_0"0
while_lstm_cell_26963while_lstm_cell_26963_0"0
while_lstm_cell_26965while_lstm_cell_26965_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?9
?
>__inference_rnn_layer_call_and_return_conditional_losses_27629

inputs"
lstm_cell_27546:	?#
lstm_cell_27548:
??
lstm_cell_27550:	?
identity

identity_1

identity_2??!lstm_cell/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_27546lstm_cell_27548lstm_cell_27550*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_26878n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_27546lstm_cell_27548lstm_cell_27550*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_27559*
condR
while_cond_27558*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0??????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????0?h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:??????????`

Identity_2Identitywhile:output:5^NoOp*
T0*(
_output_shapes
:??????????r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????0: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?9
?
>__inference_rnn_layer_call_and_return_conditional_losses_27007

inputs"
lstm_cell_26924:	?#
lstm_cell_26926:
??
lstm_cell_26928:	?
identity

identity_1

identity_2??!lstm_cell/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_26924lstm_cell_26926lstm_cell_26928*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_26878n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_26924lstm_cell_26926lstm_cell_26928*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_26937*
condR
while_cond_26936*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:??????????`

Identity_2Identitywhile:output:5^NoOp*
T0*(
_output_shapes
:??????????r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
)__inference_feed_back_layer_call_fn_27915
input_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_feed_back_layer_call_and_return_conditional_losses_27887s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????0: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????0
!
_user_specified_name	input_1
?
?
)__inference_lstm_cell_layer_call_fn_29927

inputs
states_0
states_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?9
?
>__inference_rnn_layer_call_and_return_conditional_losses_26811

inputs"
lstm_cell_26728:	?#
lstm_cell_26730:
??
lstm_cell_26732:	?
identity

identity_1

identity_2??!lstm_cell/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_26728lstm_cell_26730lstm_cell_26732*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_26727n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_26728lstm_cell_26730lstm_cell_26732*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_26741*
condR
while_cond_26740*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:??????????`

Identity_2Identitywhile:output:5^NoOp*
T0*(
_output_shapes
:??????????r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?;
?	
rnn_while_body_29209$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0G
4rnn_while_lstm_cell_matmul_readvariableop_resource_0:	?J
6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:
??D
5rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	?
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4
rnn_while_identity_5!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorE
2rnn_while_lstm_cell_matmul_readvariableop_resource:	?H
4rnn_while_lstm_cell_matmul_1_readvariableop_resource:
??B
3rnn_while_lstm_cell_biasadd_readvariableop_resource:	???*rnn/while/lstm_cell/BiasAdd/ReadVariableOp?)rnn/while/lstm_cell/MatMul/ReadVariableOp?+rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp4rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
rnn/while/lstm_cell/MatMulMatMul4rnn/while/TensorArrayV2Read/TensorListGetItem:item:01rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
rnn/while/lstm_cell/MatMul_1MatMulrnn_while_placeholder_23rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
rnn/while/lstm_cell/addAddV2$rnn/while/lstm_cell/MatMul:product:0&rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp5rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
rnn/while/lstm_cell/BiasAddBiasAddrnn/while/lstm_cell/add:z:02rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
rnn/while/lstm_cell/splitSplit,rnn/while/lstm_cell/split/split_dim:output:0$rnn/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split}
rnn/while/lstm_cell/SigmoidSigmoid"rnn/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????
rnn/while/lstm_cell/Sigmoid_1Sigmoid"rnn/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:???????????
rnn/while/lstm_cell/mulMul!rnn/while/lstm_cell/Sigmoid_1:y:0rnn_while_placeholder_3*
T0*(
_output_shapes
:??????????w
rnn/while/lstm_cell/TanhTanh"rnn/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:???????????
rnn/while/lstm_cell/mul_1Mulrnn/while/lstm_cell/Sigmoid:y:0rnn/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:???????????
rnn/while/lstm_cell/add_1AddV2rnn/while/lstm_cell/mul:z:0rnn/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????
rnn/while/lstm_cell/Sigmoid_2Sigmoid"rnn/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????t
rnn/while/lstm_cell/Tanh_1Tanhrnn/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:???????????
rnn/while/lstm_cell/mul_2Mul!rnn/while/lstm_cell/Sigmoid_2:y:0rnn/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:???????????
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholderrnn/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???Q
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: S
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: e
rnn/while/IdentityIdentityrnn/while/add_1:z:0^rnn/while/NoOp*
T0*
_output_shapes
: z
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations^rnn/while/NoOp*
T0*
_output_shapes
: e
rnn/while/Identity_2Identityrnn/while/add:z:0^rnn/while/NoOp*
T0*
_output_shapes
: ?
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn/while/NoOp*
T0*
_output_shapes
: ?
rnn/while/Identity_4Identityrnn/while/lstm_cell/mul_2:z:0^rnn/while/NoOp*
T0*(
_output_shapes
:???????????
rnn/while/Identity_5Identityrnn/while/lstm_cell/add_1:z:0^rnn/while/NoOp*
T0*(
_output_shapes
:???????????
rnn/while/NoOpNoOp+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "1
rnn_while_identityrnn/while/Identity:output:0"5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"5
rnn_while_identity_5rnn/while/Identity_5:output:0"l
3rnn_while_lstm_cell_biasadd_readvariableop_resource5rnn_while_lstm_cell_biasadd_readvariableop_resource_0"n
4rnn_while_lstm_cell_matmul_1_readvariableop_resource6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"j
2rnn_while_lstm_cell_matmul_readvariableop_resource4rnn_while_lstm_cell_matmul_readvariableop_resource_0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"?
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp*rnn/while/lstm_cell/BiasAdd/ReadVariableOp2V
)rnn/while/lstm_cell/MatMul/ReadVariableOp)rnn/while/lstm_cell/MatMul/ReadVariableOp2Z
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp+rnn/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_26740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_26740___redundant_placeholder03
/while_while_cond_26740___redundant_placeholder13
/while_while_cond_26740___redundant_placeholder23
/while_while_cond_26740___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_27558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_27558___redundant_placeholder03
/while_while_cond_27558___redundant_placeholder13
/while_while_cond_27558___redundant_placeholder23
/while_while_cond_27558___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?6
?

__inference__traced_save_30822
file_prefix3
/savev2_rnn_lstm_cell_kernel_read_readvariableop=
9savev2_rnn_lstm_cell_recurrent_kernel_read_readvariableop1
-savev2_rnn_lstm_cell_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_rnn_lstm_cell_kernel_m_read_readvariableopD
@savev2_adam_rnn_lstm_cell_recurrent_kernel_m_read_readvariableop8
4savev2_adam_rnn_lstm_cell_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop:
6savev2_adam_rnn_lstm_cell_kernel_v_read_readvariableopD
@savev2_adam_rnn_lstm_cell_recurrent_kernel_v_read_readvariableop8
4savev2_adam_rnn_lstm_cell_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B+lstm_cell/kernel/.ATTRIBUTES/VARIABLE_VALUEB5lstm_cell/recurrent_kernel/.ATTRIBUTES/VARIABLE_VALUEB)lstm_cell/bias/.ATTRIBUTES/VARIABLE_VALUEB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBGlstm_cell/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlstm_cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBElstm_cell/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGlstm_cell/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlstm_cell/recurrent_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBElstm_cell/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B ?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_rnn_lstm_cell_kernel_read_readvariableop9savev2_rnn_lstm_cell_recurrent_kernel_read_readvariableop-savev2_rnn_lstm_cell_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_rnn_lstm_cell_kernel_m_read_readvariableop@savev2_adam_rnn_lstm_cell_recurrent_kernel_m_read_readvariableop4savev2_adam_rnn_lstm_cell_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop6savev2_adam_rnn_lstm_cell_kernel_v_read_readvariableop@savev2_adam_rnn_lstm_cell_recurrent_kernel_v_read_readvariableop4savev2_adam_rnn_lstm_cell_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	?
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
_input_shapes?
?: :	?:
??:?:	?:: : : : : : : : : :	?:
??:?:	?::	?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::
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
: :%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?
?
while_cond_30478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_30478___redundant_placeholder03
/while_while_cond_30478___redundant_placeholder13
/while_while_cond_30478___redundant_placeholder23
/while_while_cond_30478___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?J
?
>__inference_rnn_layer_call_and_return_conditional_losses_30276
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	?>
*lstm_cell_matmul_1_readvariableop_resource:
??8
)lstm_cell_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:??????????k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:??????????r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????c
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*(
_output_shapes
:??????????t
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30191*
condR
while_cond_30190*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:??????????`

Identity_2Identitywhile:output:5^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?"
?
while_body_27559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_27583_0:	?+
while_lstm_cell_27585_0:
??&
while_lstm_cell_27587_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_27583:	?)
while_lstm_cell_27585:
??$
while_lstm_cell_27587:	???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_27583_0while_lstm_cell_27585_0while_lstm_cell_27587_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_26878?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:???????????
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:??????????v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_27583while_lstm_cell_27583_0"0
while_lstm_cell_27585while_lstm_cell_27585_0"0
while_lstm_cell_27587while_lstm_cell_27587_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
??
?$
D__inference_feed_back_layer_call_and_return_conditional_losses_29876

inputs?
,rnn_lstm_cell_matmul_readvariableop_resource:	?B
.rnn_lstm_cell_matmul_1_readvariableop_resource:
??<
-rnn_lstm_cell_biasadd_readvariableop_resource:	?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/BiasAdd_1/ReadVariableOp?dense/BiasAdd_10/ReadVariableOp?dense/BiasAdd_11/ReadVariableOp?dense/BiasAdd_12/ReadVariableOp?dense/BiasAdd_13/ReadVariableOp?dense/BiasAdd_14/ReadVariableOp?dense/BiasAdd_15/ReadVariableOp?dense/BiasAdd_16/ReadVariableOp?dense/BiasAdd_17/ReadVariableOp?dense/BiasAdd_18/ReadVariableOp?dense/BiasAdd_19/ReadVariableOp?dense/BiasAdd_2/ReadVariableOp?dense/BiasAdd_20/ReadVariableOp?dense/BiasAdd_21/ReadVariableOp?dense/BiasAdd_22/ReadVariableOp?dense/BiasAdd_23/ReadVariableOp?dense/BiasAdd_3/ReadVariableOp?dense/BiasAdd_4/ReadVariableOp?dense/BiasAdd_5/ReadVariableOp?dense/BiasAdd_6/ReadVariableOp?dense/BiasAdd_7/ReadVariableOp?dense/BiasAdd_8/ReadVariableOp?dense/BiasAdd_9/ReadVariableOp?dense/MatMul/ReadVariableOp?dense/MatMul_1/ReadVariableOp?dense/MatMul_10/ReadVariableOp?dense/MatMul_11/ReadVariableOp?dense/MatMul_12/ReadVariableOp?dense/MatMul_13/ReadVariableOp?dense/MatMul_14/ReadVariableOp?dense/MatMul_15/ReadVariableOp?dense/MatMul_16/ReadVariableOp?dense/MatMul_17/ReadVariableOp?dense/MatMul_18/ReadVariableOp?dense/MatMul_19/ReadVariableOp?dense/MatMul_2/ReadVariableOp?dense/MatMul_20/ReadVariableOp?dense/MatMul_21/ReadVariableOp?dense/MatMul_22/ReadVariableOp?dense/MatMul_23/ReadVariableOp?dense/MatMul_3/ReadVariableOp?dense/MatMul_4/ReadVariableOp?dense/MatMul_5/ReadVariableOp?dense/MatMul_6/ReadVariableOp?dense/MatMul_7/ReadVariableOp?dense/MatMul_8/ReadVariableOp?dense/MatMul_9/ReadVariableOp? lstm_cell/BiasAdd/ReadVariableOp?"lstm_cell/BiasAdd_1/ReadVariableOp?#lstm_cell/BiasAdd_10/ReadVariableOp?#lstm_cell/BiasAdd_11/ReadVariableOp?#lstm_cell/BiasAdd_12/ReadVariableOp?#lstm_cell/BiasAdd_13/ReadVariableOp?#lstm_cell/BiasAdd_14/ReadVariableOp?#lstm_cell/BiasAdd_15/ReadVariableOp?#lstm_cell/BiasAdd_16/ReadVariableOp?#lstm_cell/BiasAdd_17/ReadVariableOp?#lstm_cell/BiasAdd_18/ReadVariableOp?#lstm_cell/BiasAdd_19/ReadVariableOp?"lstm_cell/BiasAdd_2/ReadVariableOp?#lstm_cell/BiasAdd_20/ReadVariableOp?#lstm_cell/BiasAdd_21/ReadVariableOp?#lstm_cell/BiasAdd_22/ReadVariableOp?"lstm_cell/BiasAdd_3/ReadVariableOp?"lstm_cell/BiasAdd_4/ReadVariableOp?"lstm_cell/BiasAdd_5/ReadVariableOp?"lstm_cell/BiasAdd_6/ReadVariableOp?"lstm_cell/BiasAdd_7/ReadVariableOp?"lstm_cell/BiasAdd_8/ReadVariableOp?"lstm_cell/BiasAdd_9/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?"lstm_cell/MatMul_10/ReadVariableOp?"lstm_cell/MatMul_11/ReadVariableOp?"lstm_cell/MatMul_12/ReadVariableOp?"lstm_cell/MatMul_13/ReadVariableOp?"lstm_cell/MatMul_14/ReadVariableOp?"lstm_cell/MatMul_15/ReadVariableOp?"lstm_cell/MatMul_16/ReadVariableOp?"lstm_cell/MatMul_17/ReadVariableOp?"lstm_cell/MatMul_18/ReadVariableOp?"lstm_cell/MatMul_19/ReadVariableOp?!lstm_cell/MatMul_2/ReadVariableOp?"lstm_cell/MatMul_20/ReadVariableOp?"lstm_cell/MatMul_21/ReadVariableOp?"lstm_cell/MatMul_22/ReadVariableOp?"lstm_cell/MatMul_23/ReadVariableOp?"lstm_cell/MatMul_24/ReadVariableOp?"lstm_cell/MatMul_25/ReadVariableOp?"lstm_cell/MatMul_26/ReadVariableOp?"lstm_cell/MatMul_27/ReadVariableOp?"lstm_cell/MatMul_28/ReadVariableOp?"lstm_cell/MatMul_29/ReadVariableOp?!lstm_cell/MatMul_3/ReadVariableOp?"lstm_cell/MatMul_30/ReadVariableOp?"lstm_cell/MatMul_31/ReadVariableOp?"lstm_cell/MatMul_32/ReadVariableOp?"lstm_cell/MatMul_33/ReadVariableOp?"lstm_cell/MatMul_34/ReadVariableOp?"lstm_cell/MatMul_35/ReadVariableOp?"lstm_cell/MatMul_36/ReadVariableOp?"lstm_cell/MatMul_37/ReadVariableOp?"lstm_cell/MatMul_38/ReadVariableOp?"lstm_cell/MatMul_39/ReadVariableOp?!lstm_cell/MatMul_4/ReadVariableOp?"lstm_cell/MatMul_40/ReadVariableOp?"lstm_cell/MatMul_41/ReadVariableOp?"lstm_cell/MatMul_42/ReadVariableOp?"lstm_cell/MatMul_43/ReadVariableOp?"lstm_cell/MatMul_44/ReadVariableOp?"lstm_cell/MatMul_45/ReadVariableOp?!lstm_cell/MatMul_5/ReadVariableOp?!lstm_cell/MatMul_6/ReadVariableOp?!lstm_cell/MatMul_7/ReadVariableOp?!lstm_cell/MatMul_8/ReadVariableOp?!lstm_cell/MatMul_9/ReadVariableOp?$rnn/lstm_cell/BiasAdd/ReadVariableOp?#rnn/lstm_cell/MatMul/ReadVariableOp?%rnn/lstm_cell/MatMul_1/ReadVariableOp?	rnn/while?
	rnn/ShapeShapeinputs*
T0*
_output_shapes
:a
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    y
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0*(
_output_shapes
:??????????W
rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
rnn/zeros_1/packedPackrnn/strided_slice:output:0rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn/zeros_1Fillrnn/zeros_1/packed:output:0rnn/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????g
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
rnn/transpose	Transposeinputsrnn/transpose/perm:output:0*
T0*+
_output_shapes
:0?????????L
rnn/Shape_1Shapernn/transpose:y:0*
T0*
_output_shapes
:c
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???c
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
rnn/lstm_cell/MatMulMatMulrnn/strided_slice_2:output:0+rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
rnn/lstm_cell/MatMul_1MatMulrnn/zeros:output:0-rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
rnn/lstm_cell/addAddV2rnn/lstm_cell/MatMul:product:0 rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
rnn/lstm_cell/BiasAddBiasAddrnn/lstm_cell/add:z:0,rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
rnn/lstm_cell/splitSplit&rnn/lstm_cell/split/split_dim:output:0rnn/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitq
rnn/lstm_cell/SigmoidSigmoidrnn/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????s
rnn/lstm_cell/Sigmoid_1Sigmoidrnn/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????~
rnn/lstm_cell/mulMulrnn/lstm_cell/Sigmoid_1:y:0rnn/zeros_1:output:0*
T0*(
_output_shapes
:??????????k
rnn/lstm_cell/TanhTanhrnn/lstm_cell/split:output:2*
T0*(
_output_shapes
:???????????
rnn/lstm_cell/mul_1Mulrnn/lstm_cell/Sigmoid:y:0rnn/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????
rnn/lstm_cell/add_1AddV2rnn/lstm_cell/mul:z:0rnn/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????s
rnn/lstm_cell/Sigmoid_2Sigmoidrnn/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????h
rnn/lstm_cell/Tanh_1Tanhrnn/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:???????????
rnn/lstm_cell/mul_2Mulrnn/lstm_cell/Sigmoid_2:y:0rnn/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????r
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???J
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : g
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????X
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/zeros_1:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0,rnn_lstm_cell_matmul_readvariableop_resource.rnn_lstm_cell_matmul_1_readvariableop_resource-rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
rnn_while_body_29209* 
condR
rnn_while_cond_29208*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations ?
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0??????????*
element_dtype0l
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????e
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maski
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????0??
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMulMatMulrnn/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMulMatMuldense/BiasAdd:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_1MatMulrnn/while:output:4)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:??????????k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:??????????t
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0rnn/while:output:5*
T0*(
_output_shapes
:??????????c
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*(
_output_shapes
:??????????t
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_1/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_1MatMullstm_cell/mul_2:z:0%dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_1BiasAdddense/MatMul_1:product:0&dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_2MatMuldense/BiasAdd_1:output:0)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitm
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????m
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????w
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????g
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*(
_output_shapes
:??????????u
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
T0*(
_output_shapes
:??????????m
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_3Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_2/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_2MatMullstm_cell/mul_5:z:0%dense/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_2/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_2BiasAdddense/MatMul_2:product:0&dense/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_4MatMuldense/BiasAdd_2:output:0)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitm
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*(
_output_shapes
:??????????m
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*(
_output_shapes
:??????????w
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????g
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*(
_output_shapes
:??????????u
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
T0*(
_output_shapes
:??????????m
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_5Tanhlstm_cell/add_5:z:0*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_3/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_3MatMullstm_cell/mul_8:z:0%dense/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_3/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_3BiasAdddense/MatMul_3:product:0&dense/BiasAdd_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!lstm_cell/MatMul_6/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_6MatMuldense/BiasAdd_3:output:0)lstm_cell/MatMul_6/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_7/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_7MatMullstm_cell/mul_8:z:0)lstm_cell/MatMul_7/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_6AddV2lstm_cell/MatMul_6:product:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_3/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_3BiasAddlstm_cell/add_6:z:0*lstm_cell/BiasAdd_3/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_3/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_3Split$lstm_cell/split_3/split_dim:output:0lstm_cell/BiasAdd_3:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitm
lstm_cell/Sigmoid_9Sigmoidlstm_cell/split_3:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_10Sigmoidlstm_cell/split_3:output:1*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_9Mullstm_cell/Sigmoid_10:y:0lstm_cell/add_5:z:0*
T0*(
_output_shapes
:??????????g
lstm_cell/Tanh_6Tanhlstm_cell/split_3:output:2*
T0*(
_output_shapes
:??????????y
lstm_cell/mul_10Mullstm_cell/Sigmoid_9:y:0lstm_cell/Tanh_6:y:0*
T0*(
_output_shapes
:??????????v
lstm_cell/add_7AddV2lstm_cell/mul_9:z:0lstm_cell/mul_10:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_11Sigmoidlstm_cell/split_3:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_7Tanhlstm_cell/add_7:z:0*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_11Mullstm_cell/Sigmoid_11:y:0lstm_cell/Tanh_7:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_4/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_4MatMullstm_cell/mul_11:z:0%dense/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_4/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_4BiasAdddense/MatMul_4:product:0&dense/BiasAdd_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!lstm_cell/MatMul_8/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_8MatMuldense/BiasAdd_4:output:0)lstm_cell/MatMul_8/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_9/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_9MatMullstm_cell/mul_11:z:0)lstm_cell/MatMul_9/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_8AddV2lstm_cell/MatMul_8:product:0lstm_cell/MatMul_9:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_4/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_4BiasAddlstm_cell/add_8:z:0*lstm_cell/BiasAdd_4/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_4/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_4Split$lstm_cell/split_4/split_dim:output:0lstm_cell/BiasAdd_4:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitn
lstm_cell/Sigmoid_12Sigmoidlstm_cell/split_4:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_13Sigmoidlstm_cell/split_4:output:1*
T0*(
_output_shapes
:??????????y
lstm_cell/mul_12Mullstm_cell/Sigmoid_13:y:0lstm_cell/add_7:z:0*
T0*(
_output_shapes
:??????????g
lstm_cell/Tanh_8Tanhlstm_cell/split_4:output:2*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_13Mullstm_cell/Sigmoid_12:y:0lstm_cell/Tanh_8:y:0*
T0*(
_output_shapes
:??????????w
lstm_cell/add_9AddV2lstm_cell/mul_12:z:0lstm_cell/mul_13:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_14Sigmoidlstm_cell/split_4:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_9Tanhlstm_cell/add_9:z:0*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_14Mullstm_cell/Sigmoid_14:y:0lstm_cell/Tanh_9:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_5/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_5MatMullstm_cell/mul_14:z:0%dense/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_5/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_5BiasAdddense/MatMul_5:product:0&dense/BiasAdd_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_10/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_10MatMuldense/BiasAdd_5:output:0*lstm_cell/MatMul_10/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_11/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_11MatMullstm_cell/mul_14:z:0*lstm_cell/MatMul_11/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_10AddV2lstm_cell/MatMul_10:product:0lstm_cell/MatMul_11:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_5/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_5BiasAddlstm_cell/add_10:z:0*lstm_cell/BiasAdd_5/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_5/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_5Split$lstm_cell/split_5/split_dim:output:0lstm_cell/BiasAdd_5:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitn
lstm_cell/Sigmoid_15Sigmoidlstm_cell/split_5:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_16Sigmoidlstm_cell/split_5:output:1*
T0*(
_output_shapes
:??????????y
lstm_cell/mul_15Mullstm_cell/Sigmoid_16:y:0lstm_cell/add_9:z:0*
T0*(
_output_shapes
:??????????h
lstm_cell/Tanh_10Tanhlstm_cell/split_5:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_16Mullstm_cell/Sigmoid_15:y:0lstm_cell/Tanh_10:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_11AddV2lstm_cell/mul_15:z:0lstm_cell/mul_16:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_17Sigmoidlstm_cell/split_5:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_11Tanhlstm_cell/add_11:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_17Mullstm_cell/Sigmoid_17:y:0lstm_cell/Tanh_11:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_6/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_6MatMullstm_cell/mul_17:z:0%dense/MatMul_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_6/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_6BiasAdddense/MatMul_6:product:0&dense/BiasAdd_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_12/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_12MatMuldense/BiasAdd_6:output:0*lstm_cell/MatMul_12/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_13/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_13MatMullstm_cell/mul_17:z:0*lstm_cell/MatMul_13/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_12AddV2lstm_cell/MatMul_12:product:0lstm_cell/MatMul_13:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_6/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_6BiasAddlstm_cell/add_12:z:0*lstm_cell/BiasAdd_6/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_6/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_6Split$lstm_cell/split_6/split_dim:output:0lstm_cell/BiasAdd_6:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitn
lstm_cell/Sigmoid_18Sigmoidlstm_cell/split_6:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_19Sigmoidlstm_cell/split_6:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_18Mullstm_cell/Sigmoid_19:y:0lstm_cell/add_11:z:0*
T0*(
_output_shapes
:??????????h
lstm_cell/Tanh_12Tanhlstm_cell/split_6:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_19Mullstm_cell/Sigmoid_18:y:0lstm_cell/Tanh_12:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_13AddV2lstm_cell/mul_18:z:0lstm_cell/mul_19:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_20Sigmoidlstm_cell/split_6:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_13Tanhlstm_cell/add_13:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_20Mullstm_cell/Sigmoid_20:y:0lstm_cell/Tanh_13:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_7/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_7MatMullstm_cell/mul_20:z:0%dense/MatMul_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_7/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_7BiasAdddense/MatMul_7:product:0&dense/BiasAdd_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_14/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_14MatMuldense/BiasAdd_7:output:0*lstm_cell/MatMul_14/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_15/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_15MatMullstm_cell/mul_20:z:0*lstm_cell/MatMul_15/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_14AddV2lstm_cell/MatMul_14:product:0lstm_cell/MatMul_15:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_7/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_7BiasAddlstm_cell/add_14:z:0*lstm_cell/BiasAdd_7/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_7/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_7Split$lstm_cell/split_7/split_dim:output:0lstm_cell/BiasAdd_7:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitn
lstm_cell/Sigmoid_21Sigmoidlstm_cell/split_7:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_22Sigmoidlstm_cell/split_7:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_21Mullstm_cell/Sigmoid_22:y:0lstm_cell/add_13:z:0*
T0*(
_output_shapes
:??????????h
lstm_cell/Tanh_14Tanhlstm_cell/split_7:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_22Mullstm_cell/Sigmoid_21:y:0lstm_cell/Tanh_14:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_15AddV2lstm_cell/mul_21:z:0lstm_cell/mul_22:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_23Sigmoidlstm_cell/split_7:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_15Tanhlstm_cell/add_15:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_23Mullstm_cell/Sigmoid_23:y:0lstm_cell/Tanh_15:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_8/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_8MatMullstm_cell/mul_23:z:0%dense/MatMul_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_8/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_8BiasAdddense/MatMul_8:product:0&dense/BiasAdd_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_16/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_16MatMuldense/BiasAdd_8:output:0*lstm_cell/MatMul_16/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_17/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_17MatMullstm_cell/mul_23:z:0*lstm_cell/MatMul_17/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_16AddV2lstm_cell/MatMul_16:product:0lstm_cell/MatMul_17:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_8/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_8BiasAddlstm_cell/add_16:z:0*lstm_cell/BiasAdd_8/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_8/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_8Split$lstm_cell/split_8/split_dim:output:0lstm_cell/BiasAdd_8:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitn
lstm_cell/Sigmoid_24Sigmoidlstm_cell/split_8:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_25Sigmoidlstm_cell/split_8:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_24Mullstm_cell/Sigmoid_25:y:0lstm_cell/add_15:z:0*
T0*(
_output_shapes
:??????????h
lstm_cell/Tanh_16Tanhlstm_cell/split_8:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_25Mullstm_cell/Sigmoid_24:y:0lstm_cell/Tanh_16:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_17AddV2lstm_cell/mul_24:z:0lstm_cell/mul_25:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_26Sigmoidlstm_cell/split_8:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_17Tanhlstm_cell/add_17:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_26Mullstm_cell/Sigmoid_26:y:0lstm_cell/Tanh_17:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_9/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_9MatMullstm_cell/mul_26:z:0%dense/MatMul_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_9/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_9BiasAdddense/MatMul_9:product:0&dense/BiasAdd_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_18/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_18MatMuldense/BiasAdd_9:output:0*lstm_cell/MatMul_18/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_19/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_19MatMullstm_cell/mul_26:z:0*lstm_cell/MatMul_19/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_18AddV2lstm_cell/MatMul_18:product:0lstm_cell/MatMul_19:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_9/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_9BiasAddlstm_cell/add_18:z:0*lstm_cell/BiasAdd_9/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_9/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_9Split$lstm_cell/split_9/split_dim:output:0lstm_cell/BiasAdd_9:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitn
lstm_cell/Sigmoid_27Sigmoidlstm_cell/split_9:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_28Sigmoidlstm_cell/split_9:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_27Mullstm_cell/Sigmoid_28:y:0lstm_cell/add_17:z:0*
T0*(
_output_shapes
:??????????h
lstm_cell/Tanh_18Tanhlstm_cell/split_9:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_28Mullstm_cell/Sigmoid_27:y:0lstm_cell/Tanh_18:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_19AddV2lstm_cell/mul_27:z:0lstm_cell/mul_28:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_29Sigmoidlstm_cell/split_9:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_19Tanhlstm_cell/add_19:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_29Mullstm_cell/Sigmoid_29:y:0lstm_cell/Tanh_19:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_10/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_10MatMullstm_cell/mul_29:z:0&dense/MatMul_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_10/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_10BiasAdddense/MatMul_10:product:0'dense/BiasAdd_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_20/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_20MatMuldense/BiasAdd_10:output:0*lstm_cell/MatMul_20/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_21/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_21MatMullstm_cell/mul_29:z:0*lstm_cell/MatMul_21/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_20AddV2lstm_cell/MatMul_20:product:0lstm_cell/MatMul_21:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_10/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_10BiasAddlstm_cell/add_20:z:0+lstm_cell/BiasAdd_10/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_10/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_10Split%lstm_cell/split_10/split_dim:output:0lstm_cell/BiasAdd_10:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_30Sigmoidlstm_cell/split_10:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_31Sigmoidlstm_cell/split_10:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_30Mullstm_cell/Sigmoid_31:y:0lstm_cell/add_19:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_20Tanhlstm_cell/split_10:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_31Mullstm_cell/Sigmoid_30:y:0lstm_cell/Tanh_20:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_21AddV2lstm_cell/mul_30:z:0lstm_cell/mul_31:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_32Sigmoidlstm_cell/split_10:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_21Tanhlstm_cell/add_21:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_32Mullstm_cell/Sigmoid_32:y:0lstm_cell/Tanh_21:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_11/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_11MatMullstm_cell/mul_32:z:0&dense/MatMul_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_11/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_11BiasAdddense/MatMul_11:product:0'dense/BiasAdd_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_22/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_22MatMuldense/BiasAdd_11:output:0*lstm_cell/MatMul_22/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_23/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_23MatMullstm_cell/mul_32:z:0*lstm_cell/MatMul_23/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_22AddV2lstm_cell/MatMul_22:product:0lstm_cell/MatMul_23:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_11/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_11BiasAddlstm_cell/add_22:z:0+lstm_cell/BiasAdd_11/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_11/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_11Split%lstm_cell/split_11/split_dim:output:0lstm_cell/BiasAdd_11:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_33Sigmoidlstm_cell/split_11:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_34Sigmoidlstm_cell/split_11:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_33Mullstm_cell/Sigmoid_34:y:0lstm_cell/add_21:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_22Tanhlstm_cell/split_11:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_34Mullstm_cell/Sigmoid_33:y:0lstm_cell/Tanh_22:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_23AddV2lstm_cell/mul_33:z:0lstm_cell/mul_34:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_35Sigmoidlstm_cell/split_11:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_23Tanhlstm_cell/add_23:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_35Mullstm_cell/Sigmoid_35:y:0lstm_cell/Tanh_23:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_12/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_12MatMullstm_cell/mul_35:z:0&dense/MatMul_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_12/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_12BiasAdddense/MatMul_12:product:0'dense/BiasAdd_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_24/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_24MatMuldense/BiasAdd_12:output:0*lstm_cell/MatMul_24/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_25/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_25MatMullstm_cell/mul_35:z:0*lstm_cell/MatMul_25/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_24AddV2lstm_cell/MatMul_24:product:0lstm_cell/MatMul_25:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_12/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_12BiasAddlstm_cell/add_24:z:0+lstm_cell/BiasAdd_12/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_12/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_12Split%lstm_cell/split_12/split_dim:output:0lstm_cell/BiasAdd_12:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_36Sigmoidlstm_cell/split_12:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_37Sigmoidlstm_cell/split_12:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_36Mullstm_cell/Sigmoid_37:y:0lstm_cell/add_23:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_24Tanhlstm_cell/split_12:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_37Mullstm_cell/Sigmoid_36:y:0lstm_cell/Tanh_24:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_25AddV2lstm_cell/mul_36:z:0lstm_cell/mul_37:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_38Sigmoidlstm_cell/split_12:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_25Tanhlstm_cell/add_25:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_38Mullstm_cell/Sigmoid_38:y:0lstm_cell/Tanh_25:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_13/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_13MatMullstm_cell/mul_38:z:0&dense/MatMul_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_13/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_13BiasAdddense/MatMul_13:product:0'dense/BiasAdd_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_26/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_26MatMuldense/BiasAdd_13:output:0*lstm_cell/MatMul_26/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_27/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_27MatMullstm_cell/mul_38:z:0*lstm_cell/MatMul_27/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_26AddV2lstm_cell/MatMul_26:product:0lstm_cell/MatMul_27:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_13/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_13BiasAddlstm_cell/add_26:z:0+lstm_cell/BiasAdd_13/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_13/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_13Split%lstm_cell/split_13/split_dim:output:0lstm_cell/BiasAdd_13:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_39Sigmoidlstm_cell/split_13:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_40Sigmoidlstm_cell/split_13:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_39Mullstm_cell/Sigmoid_40:y:0lstm_cell/add_25:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_26Tanhlstm_cell/split_13:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_40Mullstm_cell/Sigmoid_39:y:0lstm_cell/Tanh_26:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_27AddV2lstm_cell/mul_39:z:0lstm_cell/mul_40:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_41Sigmoidlstm_cell/split_13:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_27Tanhlstm_cell/add_27:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_41Mullstm_cell/Sigmoid_41:y:0lstm_cell/Tanh_27:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_14/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_14MatMullstm_cell/mul_41:z:0&dense/MatMul_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_14/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_14BiasAdddense/MatMul_14:product:0'dense/BiasAdd_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_28/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_28MatMuldense/BiasAdd_14:output:0*lstm_cell/MatMul_28/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_29/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_29MatMullstm_cell/mul_41:z:0*lstm_cell/MatMul_29/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_28AddV2lstm_cell/MatMul_28:product:0lstm_cell/MatMul_29:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_14/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_14BiasAddlstm_cell/add_28:z:0+lstm_cell/BiasAdd_14/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_14/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_14Split%lstm_cell/split_14/split_dim:output:0lstm_cell/BiasAdd_14:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_42Sigmoidlstm_cell/split_14:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_43Sigmoidlstm_cell/split_14:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_42Mullstm_cell/Sigmoid_43:y:0lstm_cell/add_27:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_28Tanhlstm_cell/split_14:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_43Mullstm_cell/Sigmoid_42:y:0lstm_cell/Tanh_28:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_29AddV2lstm_cell/mul_42:z:0lstm_cell/mul_43:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_44Sigmoidlstm_cell/split_14:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_29Tanhlstm_cell/add_29:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_44Mullstm_cell/Sigmoid_44:y:0lstm_cell/Tanh_29:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_15/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_15MatMullstm_cell/mul_44:z:0&dense/MatMul_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_15/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_15BiasAdddense/MatMul_15:product:0'dense/BiasAdd_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_30/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_30MatMuldense/BiasAdd_15:output:0*lstm_cell/MatMul_30/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_31/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_31MatMullstm_cell/mul_44:z:0*lstm_cell/MatMul_31/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_30AddV2lstm_cell/MatMul_30:product:0lstm_cell/MatMul_31:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_15/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_15BiasAddlstm_cell/add_30:z:0+lstm_cell/BiasAdd_15/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_15/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_15Split%lstm_cell/split_15/split_dim:output:0lstm_cell/BiasAdd_15:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_45Sigmoidlstm_cell/split_15:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_46Sigmoidlstm_cell/split_15:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_45Mullstm_cell/Sigmoid_46:y:0lstm_cell/add_29:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_30Tanhlstm_cell/split_15:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_46Mullstm_cell/Sigmoid_45:y:0lstm_cell/Tanh_30:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_31AddV2lstm_cell/mul_45:z:0lstm_cell/mul_46:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_47Sigmoidlstm_cell/split_15:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_31Tanhlstm_cell/add_31:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_47Mullstm_cell/Sigmoid_47:y:0lstm_cell/Tanh_31:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_16/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_16MatMullstm_cell/mul_47:z:0&dense/MatMul_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_16/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_16BiasAdddense/MatMul_16:product:0'dense/BiasAdd_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_32/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_32MatMuldense/BiasAdd_16:output:0*lstm_cell/MatMul_32/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_33/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_33MatMullstm_cell/mul_47:z:0*lstm_cell/MatMul_33/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_32AddV2lstm_cell/MatMul_32:product:0lstm_cell/MatMul_33:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_16/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_16BiasAddlstm_cell/add_32:z:0+lstm_cell/BiasAdd_16/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_16/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_16Split%lstm_cell/split_16/split_dim:output:0lstm_cell/BiasAdd_16:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_48Sigmoidlstm_cell/split_16:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_49Sigmoidlstm_cell/split_16:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_48Mullstm_cell/Sigmoid_49:y:0lstm_cell/add_31:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_32Tanhlstm_cell/split_16:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_49Mullstm_cell/Sigmoid_48:y:0lstm_cell/Tanh_32:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_33AddV2lstm_cell/mul_48:z:0lstm_cell/mul_49:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_50Sigmoidlstm_cell/split_16:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_33Tanhlstm_cell/add_33:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_50Mullstm_cell/Sigmoid_50:y:0lstm_cell/Tanh_33:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_17/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_17MatMullstm_cell/mul_50:z:0&dense/MatMul_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_17/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_17BiasAdddense/MatMul_17:product:0'dense/BiasAdd_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_34/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_34MatMuldense/BiasAdd_17:output:0*lstm_cell/MatMul_34/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_35/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_35MatMullstm_cell/mul_50:z:0*lstm_cell/MatMul_35/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_34AddV2lstm_cell/MatMul_34:product:0lstm_cell/MatMul_35:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_17/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_17BiasAddlstm_cell/add_34:z:0+lstm_cell/BiasAdd_17/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_17/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_17Split%lstm_cell/split_17/split_dim:output:0lstm_cell/BiasAdd_17:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_51Sigmoidlstm_cell/split_17:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_52Sigmoidlstm_cell/split_17:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_51Mullstm_cell/Sigmoid_52:y:0lstm_cell/add_33:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_34Tanhlstm_cell/split_17:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_52Mullstm_cell/Sigmoid_51:y:0lstm_cell/Tanh_34:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_35AddV2lstm_cell/mul_51:z:0lstm_cell/mul_52:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_53Sigmoidlstm_cell/split_17:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_35Tanhlstm_cell/add_35:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_53Mullstm_cell/Sigmoid_53:y:0lstm_cell/Tanh_35:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_18/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_18MatMullstm_cell/mul_53:z:0&dense/MatMul_18/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_18/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_18BiasAdddense/MatMul_18:product:0'dense/BiasAdd_18/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_36/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_36MatMuldense/BiasAdd_18:output:0*lstm_cell/MatMul_36/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_37/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_37MatMullstm_cell/mul_53:z:0*lstm_cell/MatMul_37/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_36AddV2lstm_cell/MatMul_36:product:0lstm_cell/MatMul_37:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_18/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_18BiasAddlstm_cell/add_36:z:0+lstm_cell/BiasAdd_18/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_18/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_18Split%lstm_cell/split_18/split_dim:output:0lstm_cell/BiasAdd_18:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_54Sigmoidlstm_cell/split_18:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_55Sigmoidlstm_cell/split_18:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_54Mullstm_cell/Sigmoid_55:y:0lstm_cell/add_35:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_36Tanhlstm_cell/split_18:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_55Mullstm_cell/Sigmoid_54:y:0lstm_cell/Tanh_36:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_37AddV2lstm_cell/mul_54:z:0lstm_cell/mul_55:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_56Sigmoidlstm_cell/split_18:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_37Tanhlstm_cell/add_37:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_56Mullstm_cell/Sigmoid_56:y:0lstm_cell/Tanh_37:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_19/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_19MatMullstm_cell/mul_56:z:0&dense/MatMul_19/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_19/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_19BiasAdddense/MatMul_19:product:0'dense/BiasAdd_19/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_38/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_38MatMuldense/BiasAdd_19:output:0*lstm_cell/MatMul_38/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_39/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_39MatMullstm_cell/mul_56:z:0*lstm_cell/MatMul_39/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_38AddV2lstm_cell/MatMul_38:product:0lstm_cell/MatMul_39:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_19/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_19BiasAddlstm_cell/add_38:z:0+lstm_cell/BiasAdd_19/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_19/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_19Split%lstm_cell/split_19/split_dim:output:0lstm_cell/BiasAdd_19:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_57Sigmoidlstm_cell/split_19:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_58Sigmoidlstm_cell/split_19:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_57Mullstm_cell/Sigmoid_58:y:0lstm_cell/add_37:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_38Tanhlstm_cell/split_19:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_58Mullstm_cell/Sigmoid_57:y:0lstm_cell/Tanh_38:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_39AddV2lstm_cell/mul_57:z:0lstm_cell/mul_58:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_59Sigmoidlstm_cell/split_19:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_39Tanhlstm_cell/add_39:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_59Mullstm_cell/Sigmoid_59:y:0lstm_cell/Tanh_39:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_20/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_20MatMullstm_cell/mul_59:z:0&dense/MatMul_20/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_20/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_20BiasAdddense/MatMul_20:product:0'dense/BiasAdd_20/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_40/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_40MatMuldense/BiasAdd_20:output:0*lstm_cell/MatMul_40/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_41/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_41MatMullstm_cell/mul_59:z:0*lstm_cell/MatMul_41/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_40AddV2lstm_cell/MatMul_40:product:0lstm_cell/MatMul_41:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_20/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_20BiasAddlstm_cell/add_40:z:0+lstm_cell/BiasAdd_20/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_20/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_20Split%lstm_cell/split_20/split_dim:output:0lstm_cell/BiasAdd_20:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_60Sigmoidlstm_cell/split_20:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_61Sigmoidlstm_cell/split_20:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_60Mullstm_cell/Sigmoid_61:y:0lstm_cell/add_39:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_40Tanhlstm_cell/split_20:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_61Mullstm_cell/Sigmoid_60:y:0lstm_cell/Tanh_40:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_41AddV2lstm_cell/mul_60:z:0lstm_cell/mul_61:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_62Sigmoidlstm_cell/split_20:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_41Tanhlstm_cell/add_41:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_62Mullstm_cell/Sigmoid_62:y:0lstm_cell/Tanh_41:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_21/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_21MatMullstm_cell/mul_62:z:0&dense/MatMul_21/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_21/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_21BiasAdddense/MatMul_21:product:0'dense/BiasAdd_21/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_42/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_42MatMuldense/BiasAdd_21:output:0*lstm_cell/MatMul_42/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_43/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_43MatMullstm_cell/mul_62:z:0*lstm_cell/MatMul_43/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_42AddV2lstm_cell/MatMul_42:product:0lstm_cell/MatMul_43:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_21/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_21BiasAddlstm_cell/add_42:z:0+lstm_cell/BiasAdd_21/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_21/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_21Split%lstm_cell/split_21/split_dim:output:0lstm_cell/BiasAdd_21:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_63Sigmoidlstm_cell/split_21:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_64Sigmoidlstm_cell/split_21:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_63Mullstm_cell/Sigmoid_64:y:0lstm_cell/add_41:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_42Tanhlstm_cell/split_21:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_64Mullstm_cell/Sigmoid_63:y:0lstm_cell/Tanh_42:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_43AddV2lstm_cell/mul_63:z:0lstm_cell/mul_64:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_65Sigmoidlstm_cell/split_21:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_43Tanhlstm_cell/add_43:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_65Mullstm_cell/Sigmoid_65:y:0lstm_cell/Tanh_43:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_22/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_22MatMullstm_cell/mul_65:z:0&dense/MatMul_22/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_22/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_22BiasAdddense/MatMul_22:product:0'dense/BiasAdd_22/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_44/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_44MatMuldense/BiasAdd_22:output:0*lstm_cell/MatMul_44/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_45/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_45MatMullstm_cell/mul_65:z:0*lstm_cell/MatMul_45/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_44AddV2lstm_cell/MatMul_44:product:0lstm_cell/MatMul_45:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_22/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_22BiasAddlstm_cell/add_44:z:0+lstm_cell/BiasAdd_22/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_22/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_22Split%lstm_cell/split_22/split_dim:output:0lstm_cell/BiasAdd_22:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_66Sigmoidlstm_cell/split_22:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_67Sigmoidlstm_cell/split_22:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_66Mullstm_cell/Sigmoid_67:y:0lstm_cell/add_43:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_44Tanhlstm_cell/split_22:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_67Mullstm_cell/Sigmoid_66:y:0lstm_cell/Tanh_44:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_45AddV2lstm_cell/mul_66:z:0lstm_cell/mul_67:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_68Sigmoidlstm_cell/split_22:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_45Tanhlstm_cell/add_45:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_68Mullstm_cell/Sigmoid_68:y:0lstm_cell/Tanh_45:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_23/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_23MatMullstm_cell/mul_68:z:0&dense/MatMul_23/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_23/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_23BiasAdddense/MatMul_23:product:0'dense/BiasAdd_23/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
stackPackdense/BiasAdd:output:0dense/BiasAdd_1:output:0dense/BiasAdd_2:output:0dense/BiasAdd_3:output:0dense/BiasAdd_4:output:0dense/BiasAdd_5:output:0dense/BiasAdd_6:output:0dense/BiasAdd_7:output:0dense/BiasAdd_8:output:0dense/BiasAdd_9:output:0dense/BiasAdd_10:output:0dense/BiasAdd_11:output:0dense/BiasAdd_12:output:0dense/BiasAdd_13:output:0dense/BiasAdd_14:output:0dense/BiasAdd_15:output:0dense/BiasAdd_16:output:0dense/BiasAdd_17:output:0dense/BiasAdd_18:output:0dense/BiasAdd_19:output:0dense/BiasAdd_20:output:0dense/BiasAdd_21:output:0dense/BiasAdd_22:output:0dense/BiasAdd_23:output:0*
N*
T0*+
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:?????????`
IdentityIdentitytranspose:y:0^NoOp*
T0*+
_output_shapes
:??????????!
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/BiasAdd_1/ReadVariableOp ^dense/BiasAdd_10/ReadVariableOp ^dense/BiasAdd_11/ReadVariableOp ^dense/BiasAdd_12/ReadVariableOp ^dense/BiasAdd_13/ReadVariableOp ^dense/BiasAdd_14/ReadVariableOp ^dense/BiasAdd_15/ReadVariableOp ^dense/BiasAdd_16/ReadVariableOp ^dense/BiasAdd_17/ReadVariableOp ^dense/BiasAdd_18/ReadVariableOp ^dense/BiasAdd_19/ReadVariableOp^dense/BiasAdd_2/ReadVariableOp ^dense/BiasAdd_20/ReadVariableOp ^dense/BiasAdd_21/ReadVariableOp ^dense/BiasAdd_22/ReadVariableOp ^dense/BiasAdd_23/ReadVariableOp^dense/BiasAdd_3/ReadVariableOp^dense/BiasAdd_4/ReadVariableOp^dense/BiasAdd_5/ReadVariableOp^dense/BiasAdd_6/ReadVariableOp^dense/BiasAdd_7/ReadVariableOp^dense/BiasAdd_8/ReadVariableOp^dense/BiasAdd_9/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/MatMul_1/ReadVariableOp^dense/MatMul_10/ReadVariableOp^dense/MatMul_11/ReadVariableOp^dense/MatMul_12/ReadVariableOp^dense/MatMul_13/ReadVariableOp^dense/MatMul_14/ReadVariableOp^dense/MatMul_15/ReadVariableOp^dense/MatMul_16/ReadVariableOp^dense/MatMul_17/ReadVariableOp^dense/MatMul_18/ReadVariableOp^dense/MatMul_19/ReadVariableOp^dense/MatMul_2/ReadVariableOp^dense/MatMul_20/ReadVariableOp^dense/MatMul_21/ReadVariableOp^dense/MatMul_22/ReadVariableOp^dense/MatMul_23/ReadVariableOp^dense/MatMul_3/ReadVariableOp^dense/MatMul_4/ReadVariableOp^dense/MatMul_5/ReadVariableOp^dense/MatMul_6/ReadVariableOp^dense/MatMul_7/ReadVariableOp^dense/MatMul_8/ReadVariableOp^dense/MatMul_9/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp$^lstm_cell/BiasAdd_10/ReadVariableOp$^lstm_cell/BiasAdd_11/ReadVariableOp$^lstm_cell/BiasAdd_12/ReadVariableOp$^lstm_cell/BiasAdd_13/ReadVariableOp$^lstm_cell/BiasAdd_14/ReadVariableOp$^lstm_cell/BiasAdd_15/ReadVariableOp$^lstm_cell/BiasAdd_16/ReadVariableOp$^lstm_cell/BiasAdd_17/ReadVariableOp$^lstm_cell/BiasAdd_18/ReadVariableOp$^lstm_cell/BiasAdd_19/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp$^lstm_cell/BiasAdd_20/ReadVariableOp$^lstm_cell/BiasAdd_21/ReadVariableOp$^lstm_cell/BiasAdd_22/ReadVariableOp#^lstm_cell/BiasAdd_3/ReadVariableOp#^lstm_cell/BiasAdd_4/ReadVariableOp#^lstm_cell/BiasAdd_5/ReadVariableOp#^lstm_cell/BiasAdd_6/ReadVariableOp#^lstm_cell/BiasAdd_7/ReadVariableOp#^lstm_cell/BiasAdd_8/ReadVariableOp#^lstm_cell/BiasAdd_9/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp#^lstm_cell/MatMul_10/ReadVariableOp#^lstm_cell/MatMul_11/ReadVariableOp#^lstm_cell/MatMul_12/ReadVariableOp#^lstm_cell/MatMul_13/ReadVariableOp#^lstm_cell/MatMul_14/ReadVariableOp#^lstm_cell/MatMul_15/ReadVariableOp#^lstm_cell/MatMul_16/ReadVariableOp#^lstm_cell/MatMul_17/ReadVariableOp#^lstm_cell/MatMul_18/ReadVariableOp#^lstm_cell/MatMul_19/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp#^lstm_cell/MatMul_20/ReadVariableOp#^lstm_cell/MatMul_21/ReadVariableOp#^lstm_cell/MatMul_22/ReadVariableOp#^lstm_cell/MatMul_23/ReadVariableOp#^lstm_cell/MatMul_24/ReadVariableOp#^lstm_cell/MatMul_25/ReadVariableOp#^lstm_cell/MatMul_26/ReadVariableOp#^lstm_cell/MatMul_27/ReadVariableOp#^lstm_cell/MatMul_28/ReadVariableOp#^lstm_cell/MatMul_29/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp#^lstm_cell/MatMul_30/ReadVariableOp#^lstm_cell/MatMul_31/ReadVariableOp#^lstm_cell/MatMul_32/ReadVariableOp#^lstm_cell/MatMul_33/ReadVariableOp#^lstm_cell/MatMul_34/ReadVariableOp#^lstm_cell/MatMul_35/ReadVariableOp#^lstm_cell/MatMul_36/ReadVariableOp#^lstm_cell/MatMul_37/ReadVariableOp#^lstm_cell/MatMul_38/ReadVariableOp#^lstm_cell/MatMul_39/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp#^lstm_cell/MatMul_40/ReadVariableOp#^lstm_cell/MatMul_41/ReadVariableOp#^lstm_cell/MatMul_42/ReadVariableOp#^lstm_cell/MatMul_43/ReadVariableOp#^lstm_cell/MatMul_44/ReadVariableOp#^lstm_cell/MatMul_45/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp"^lstm_cell/MatMul_6/ReadVariableOp"^lstm_cell/MatMul_7/ReadVariableOp"^lstm_cell/MatMul_8/ReadVariableOp"^lstm_cell/MatMul_9/ReadVariableOp%^rnn/lstm_cell/BiasAdd/ReadVariableOp$^rnn/lstm_cell/MatMul/ReadVariableOp&^rnn/lstm_cell/MatMul_1/ReadVariableOp
^rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????0: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/BiasAdd_1/ReadVariableOpdense/BiasAdd_1/ReadVariableOp2B
dense/BiasAdd_10/ReadVariableOpdense/BiasAdd_10/ReadVariableOp2B
dense/BiasAdd_11/ReadVariableOpdense/BiasAdd_11/ReadVariableOp2B
dense/BiasAdd_12/ReadVariableOpdense/BiasAdd_12/ReadVariableOp2B
dense/BiasAdd_13/ReadVariableOpdense/BiasAdd_13/ReadVariableOp2B
dense/BiasAdd_14/ReadVariableOpdense/BiasAdd_14/ReadVariableOp2B
dense/BiasAdd_15/ReadVariableOpdense/BiasAdd_15/ReadVariableOp2B
dense/BiasAdd_16/ReadVariableOpdense/BiasAdd_16/ReadVariableOp2B
dense/BiasAdd_17/ReadVariableOpdense/BiasAdd_17/ReadVariableOp2B
dense/BiasAdd_18/ReadVariableOpdense/BiasAdd_18/ReadVariableOp2B
dense/BiasAdd_19/ReadVariableOpdense/BiasAdd_19/ReadVariableOp2@
dense/BiasAdd_2/ReadVariableOpdense/BiasAdd_2/ReadVariableOp2B
dense/BiasAdd_20/ReadVariableOpdense/BiasAdd_20/ReadVariableOp2B
dense/BiasAdd_21/ReadVariableOpdense/BiasAdd_21/ReadVariableOp2B
dense/BiasAdd_22/ReadVariableOpdense/BiasAdd_22/ReadVariableOp2B
dense/BiasAdd_23/ReadVariableOpdense/BiasAdd_23/ReadVariableOp2@
dense/BiasAdd_3/ReadVariableOpdense/BiasAdd_3/ReadVariableOp2@
dense/BiasAdd_4/ReadVariableOpdense/BiasAdd_4/ReadVariableOp2@
dense/BiasAdd_5/ReadVariableOpdense/BiasAdd_5/ReadVariableOp2@
dense/BiasAdd_6/ReadVariableOpdense/BiasAdd_6/ReadVariableOp2@
dense/BiasAdd_7/ReadVariableOpdense/BiasAdd_7/ReadVariableOp2@
dense/BiasAdd_8/ReadVariableOpdense/BiasAdd_8/ReadVariableOp2@
dense/BiasAdd_9/ReadVariableOpdense/BiasAdd_9/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
dense/MatMul_1/ReadVariableOpdense/MatMul_1/ReadVariableOp2@
dense/MatMul_10/ReadVariableOpdense/MatMul_10/ReadVariableOp2@
dense/MatMul_11/ReadVariableOpdense/MatMul_11/ReadVariableOp2@
dense/MatMul_12/ReadVariableOpdense/MatMul_12/ReadVariableOp2@
dense/MatMul_13/ReadVariableOpdense/MatMul_13/ReadVariableOp2@
dense/MatMul_14/ReadVariableOpdense/MatMul_14/ReadVariableOp2@
dense/MatMul_15/ReadVariableOpdense/MatMul_15/ReadVariableOp2@
dense/MatMul_16/ReadVariableOpdense/MatMul_16/ReadVariableOp2@
dense/MatMul_17/ReadVariableOpdense/MatMul_17/ReadVariableOp2@
dense/MatMul_18/ReadVariableOpdense/MatMul_18/ReadVariableOp2@
dense/MatMul_19/ReadVariableOpdense/MatMul_19/ReadVariableOp2>
dense/MatMul_2/ReadVariableOpdense/MatMul_2/ReadVariableOp2@
dense/MatMul_20/ReadVariableOpdense/MatMul_20/ReadVariableOp2@
dense/MatMul_21/ReadVariableOpdense/MatMul_21/ReadVariableOp2@
dense/MatMul_22/ReadVariableOpdense/MatMul_22/ReadVariableOp2@
dense/MatMul_23/ReadVariableOpdense/MatMul_23/ReadVariableOp2>
dense/MatMul_3/ReadVariableOpdense/MatMul_3/ReadVariableOp2>
dense/MatMul_4/ReadVariableOpdense/MatMul_4/ReadVariableOp2>
dense/MatMul_5/ReadVariableOpdense/MatMul_5/ReadVariableOp2>
dense/MatMul_6/ReadVariableOpdense/MatMul_6/ReadVariableOp2>
dense/MatMul_7/ReadVariableOpdense/MatMul_7/ReadVariableOp2>
dense/MatMul_8/ReadVariableOpdense/MatMul_8/ReadVariableOp2>
dense/MatMul_9/ReadVariableOpdense/MatMul_9/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2H
"lstm_cell/BiasAdd_1/ReadVariableOp"lstm_cell/BiasAdd_1/ReadVariableOp2J
#lstm_cell/BiasAdd_10/ReadVariableOp#lstm_cell/BiasAdd_10/ReadVariableOp2J
#lstm_cell/BiasAdd_11/ReadVariableOp#lstm_cell/BiasAdd_11/ReadVariableOp2J
#lstm_cell/BiasAdd_12/ReadVariableOp#lstm_cell/BiasAdd_12/ReadVariableOp2J
#lstm_cell/BiasAdd_13/ReadVariableOp#lstm_cell/BiasAdd_13/ReadVariableOp2J
#lstm_cell/BiasAdd_14/ReadVariableOp#lstm_cell/BiasAdd_14/ReadVariableOp2J
#lstm_cell/BiasAdd_15/ReadVariableOp#lstm_cell/BiasAdd_15/ReadVariableOp2J
#lstm_cell/BiasAdd_16/ReadVariableOp#lstm_cell/BiasAdd_16/ReadVariableOp2J
#lstm_cell/BiasAdd_17/ReadVariableOp#lstm_cell/BiasAdd_17/ReadVariableOp2J
#lstm_cell/BiasAdd_18/ReadVariableOp#lstm_cell/BiasAdd_18/ReadVariableOp2J
#lstm_cell/BiasAdd_19/ReadVariableOp#lstm_cell/BiasAdd_19/ReadVariableOp2H
"lstm_cell/BiasAdd_2/ReadVariableOp"lstm_cell/BiasAdd_2/ReadVariableOp2J
#lstm_cell/BiasAdd_20/ReadVariableOp#lstm_cell/BiasAdd_20/ReadVariableOp2J
#lstm_cell/BiasAdd_21/ReadVariableOp#lstm_cell/BiasAdd_21/ReadVariableOp2J
#lstm_cell/BiasAdd_22/ReadVariableOp#lstm_cell/BiasAdd_22/ReadVariableOp2H
"lstm_cell/BiasAdd_3/ReadVariableOp"lstm_cell/BiasAdd_3/ReadVariableOp2H
"lstm_cell/BiasAdd_4/ReadVariableOp"lstm_cell/BiasAdd_4/ReadVariableOp2H
"lstm_cell/BiasAdd_5/ReadVariableOp"lstm_cell/BiasAdd_5/ReadVariableOp2H
"lstm_cell/BiasAdd_6/ReadVariableOp"lstm_cell/BiasAdd_6/ReadVariableOp2H
"lstm_cell/BiasAdd_7/ReadVariableOp"lstm_cell/BiasAdd_7/ReadVariableOp2H
"lstm_cell/BiasAdd_8/ReadVariableOp"lstm_cell/BiasAdd_8/ReadVariableOp2H
"lstm_cell/BiasAdd_9/ReadVariableOp"lstm_cell/BiasAdd_9/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2H
"lstm_cell/MatMul_10/ReadVariableOp"lstm_cell/MatMul_10/ReadVariableOp2H
"lstm_cell/MatMul_11/ReadVariableOp"lstm_cell/MatMul_11/ReadVariableOp2H
"lstm_cell/MatMul_12/ReadVariableOp"lstm_cell/MatMul_12/ReadVariableOp2H
"lstm_cell/MatMul_13/ReadVariableOp"lstm_cell/MatMul_13/ReadVariableOp2H
"lstm_cell/MatMul_14/ReadVariableOp"lstm_cell/MatMul_14/ReadVariableOp2H
"lstm_cell/MatMul_15/ReadVariableOp"lstm_cell/MatMul_15/ReadVariableOp2H
"lstm_cell/MatMul_16/ReadVariableOp"lstm_cell/MatMul_16/ReadVariableOp2H
"lstm_cell/MatMul_17/ReadVariableOp"lstm_cell/MatMul_17/ReadVariableOp2H
"lstm_cell/MatMul_18/ReadVariableOp"lstm_cell/MatMul_18/ReadVariableOp2H
"lstm_cell/MatMul_19/ReadVariableOp"lstm_cell/MatMul_19/ReadVariableOp2F
!lstm_cell/MatMul_2/ReadVariableOp!lstm_cell/MatMul_2/ReadVariableOp2H
"lstm_cell/MatMul_20/ReadVariableOp"lstm_cell/MatMul_20/ReadVariableOp2H
"lstm_cell/MatMul_21/ReadVariableOp"lstm_cell/MatMul_21/ReadVariableOp2H
"lstm_cell/MatMul_22/ReadVariableOp"lstm_cell/MatMul_22/ReadVariableOp2H
"lstm_cell/MatMul_23/ReadVariableOp"lstm_cell/MatMul_23/ReadVariableOp2H
"lstm_cell/MatMul_24/ReadVariableOp"lstm_cell/MatMul_24/ReadVariableOp2H
"lstm_cell/MatMul_25/ReadVariableOp"lstm_cell/MatMul_25/ReadVariableOp2H
"lstm_cell/MatMul_26/ReadVariableOp"lstm_cell/MatMul_26/ReadVariableOp2H
"lstm_cell/MatMul_27/ReadVariableOp"lstm_cell/MatMul_27/ReadVariableOp2H
"lstm_cell/MatMul_28/ReadVariableOp"lstm_cell/MatMul_28/ReadVariableOp2H
"lstm_cell/MatMul_29/ReadVariableOp"lstm_cell/MatMul_29/ReadVariableOp2F
!lstm_cell/MatMul_3/ReadVariableOp!lstm_cell/MatMul_3/ReadVariableOp2H
"lstm_cell/MatMul_30/ReadVariableOp"lstm_cell/MatMul_30/ReadVariableOp2H
"lstm_cell/MatMul_31/ReadVariableOp"lstm_cell/MatMul_31/ReadVariableOp2H
"lstm_cell/MatMul_32/ReadVariableOp"lstm_cell/MatMul_32/ReadVariableOp2H
"lstm_cell/MatMul_33/ReadVariableOp"lstm_cell/MatMul_33/ReadVariableOp2H
"lstm_cell/MatMul_34/ReadVariableOp"lstm_cell/MatMul_34/ReadVariableOp2H
"lstm_cell/MatMul_35/ReadVariableOp"lstm_cell/MatMul_35/ReadVariableOp2H
"lstm_cell/MatMul_36/ReadVariableOp"lstm_cell/MatMul_36/ReadVariableOp2H
"lstm_cell/MatMul_37/ReadVariableOp"lstm_cell/MatMul_37/ReadVariableOp2H
"lstm_cell/MatMul_38/ReadVariableOp"lstm_cell/MatMul_38/ReadVariableOp2H
"lstm_cell/MatMul_39/ReadVariableOp"lstm_cell/MatMul_39/ReadVariableOp2F
!lstm_cell/MatMul_4/ReadVariableOp!lstm_cell/MatMul_4/ReadVariableOp2H
"lstm_cell/MatMul_40/ReadVariableOp"lstm_cell/MatMul_40/ReadVariableOp2H
"lstm_cell/MatMul_41/ReadVariableOp"lstm_cell/MatMul_41/ReadVariableOp2H
"lstm_cell/MatMul_42/ReadVariableOp"lstm_cell/MatMul_42/ReadVariableOp2H
"lstm_cell/MatMul_43/ReadVariableOp"lstm_cell/MatMul_43/ReadVariableOp2H
"lstm_cell/MatMul_44/ReadVariableOp"lstm_cell/MatMul_44/ReadVariableOp2H
"lstm_cell/MatMul_45/ReadVariableOp"lstm_cell/MatMul_45/ReadVariableOp2F
!lstm_cell/MatMul_5/ReadVariableOp!lstm_cell/MatMul_5/ReadVariableOp2F
!lstm_cell/MatMul_6/ReadVariableOp!lstm_cell/MatMul_6/ReadVariableOp2F
!lstm_cell/MatMul_7/ReadVariableOp!lstm_cell/MatMul_7/ReadVariableOp2F
!lstm_cell/MatMul_8/ReadVariableOp!lstm_cell/MatMul_8/ReadVariableOp2F
!lstm_cell/MatMul_9/ReadVariableOp!lstm_cell/MatMul_9/ReadVariableOp2L
$rnn/lstm_cell/BiasAdd/ReadVariableOp$rnn/lstm_cell/BiasAdd/ReadVariableOp2J
#rnn/lstm_cell/MatMul/ReadVariableOp#rnn/lstm_cell/MatMul/ReadVariableOp2N
%rnn/lstm_cell/MatMul_1/ReadVariableOp%rnn/lstm_cell/MatMul_1/ReadVariableOp2
	rnn/while	rnn/while:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
)__inference_lstm_cell_layer_call_fn_29944

inputs
states_0
states_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27485p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_30008

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?J
?
>__inference_rnn_layer_call_and_return_conditional_losses_30708

inputs;
(lstm_cell_matmul_readvariableop_resource:	?>
*lstm_cell_matmul_1_readvariableop_resource:
??8
)lstm_cell_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:??????????k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:??????????r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????c
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*(
_output_shapes
:??????????t
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30623*
condR
while_cond_30622*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0??????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????0?h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:??????????`

Identity_2Identitywhile:output:5^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????0: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_30727

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
#__inference_rnn_layer_call_fn_30087
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_26811p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_26936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_26936___redundant_placeholder03
/while_while_cond_26936___redundant_placeholder13
/while_while_cond_26936___redundant_placeholder23
/while_while_cond_26936___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_26878

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
%__inference_dense_layer_call_fn_30717

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
D__inference_feed_back_layer_call_and_return_conditional_losses_27409

inputs
	rnn_27141:	?
	rnn_27143:
??
	rnn_27145:	?
dense_27161:	?
dense_27163:
identity??dense/StatefulPartitionedCall?dense/StatefulPartitionedCall_1? dense/StatefulPartitionedCall_10? dense/StatefulPartitionedCall_11? dense/StatefulPartitionedCall_12? dense/StatefulPartitionedCall_13? dense/StatefulPartitionedCall_14? dense/StatefulPartitionedCall_15? dense/StatefulPartitionedCall_16? dense/StatefulPartitionedCall_17? dense/StatefulPartitionedCall_18? dense/StatefulPartitionedCall_19?dense/StatefulPartitionedCall_2? dense/StatefulPartitionedCall_20? dense/StatefulPartitionedCall_21? dense/StatefulPartitionedCall_22? dense/StatefulPartitionedCall_23?dense/StatefulPartitionedCall_3?dense/StatefulPartitionedCall_4?dense/StatefulPartitionedCall_5?dense/StatefulPartitionedCall_6?dense/StatefulPartitionedCall_7?dense/StatefulPartitionedCall_8?dense/StatefulPartitionedCall_9?!lstm_cell/StatefulPartitionedCall?#lstm_cell/StatefulPartitionedCall_1?$lstm_cell/StatefulPartitionedCall_10?$lstm_cell/StatefulPartitionedCall_11?$lstm_cell/StatefulPartitionedCall_12?$lstm_cell/StatefulPartitionedCall_13?$lstm_cell/StatefulPartitionedCall_14?$lstm_cell/StatefulPartitionedCall_15?$lstm_cell/StatefulPartitionedCall_16?$lstm_cell/StatefulPartitionedCall_17?$lstm_cell/StatefulPartitionedCall_18?$lstm_cell/StatefulPartitionedCall_19?#lstm_cell/StatefulPartitionedCall_2?$lstm_cell/StatefulPartitionedCall_20?$lstm_cell/StatefulPartitionedCall_21?$lstm_cell/StatefulPartitionedCall_22?#lstm_cell/StatefulPartitionedCall_3?#lstm_cell/StatefulPartitionedCall_4?#lstm_cell/StatefulPartitionedCall_5?#lstm_cell/StatefulPartitionedCall_6?#lstm_cell/StatefulPartitionedCall_7?#lstm_cell/StatefulPartitionedCall_8?#lstm_cell/StatefulPartitionedCall_9?rnn/StatefulPartitionedCall?
rnn/StatefulPartitionedCallStatefulPartitionedCallinputs	rnn_27141	rnn_27143	rnn_27145*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_27140?
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0$rnn/StatefulPartitionedCall:output:1$rnn/StatefulPartitionedCall:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_1StatefulPartitionedCall*lstm_cell/StatefulPartitionedCall:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_1StatefulPartitionedCall(dense/StatefulPartitionedCall_1:output:0*lstm_cell/StatefulPartitionedCall:output:1*lstm_cell/StatefulPartitionedCall:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_2StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_1:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_2StatefulPartitionedCall(dense/StatefulPartitionedCall_2:output:0,lstm_cell/StatefulPartitionedCall_1:output:1,lstm_cell/StatefulPartitionedCall_1:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_3StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_2:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_3StatefulPartitionedCall(dense/StatefulPartitionedCall_3:output:0,lstm_cell/StatefulPartitionedCall_2:output:1,lstm_cell/StatefulPartitionedCall_2:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_4StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_3:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_4StatefulPartitionedCall(dense/StatefulPartitionedCall_4:output:0,lstm_cell/StatefulPartitionedCall_3:output:1,lstm_cell/StatefulPartitionedCall_3:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_5StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_4:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_5StatefulPartitionedCall(dense/StatefulPartitionedCall_5:output:0,lstm_cell/StatefulPartitionedCall_4:output:1,lstm_cell/StatefulPartitionedCall_4:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_6StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_5:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_6StatefulPartitionedCall(dense/StatefulPartitionedCall_6:output:0,lstm_cell/StatefulPartitionedCall_5:output:1,lstm_cell/StatefulPartitionedCall_5:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_7StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_6:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_7StatefulPartitionedCall(dense/StatefulPartitionedCall_7:output:0,lstm_cell/StatefulPartitionedCall_6:output:1,lstm_cell/StatefulPartitionedCall_6:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_8StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_7:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_8StatefulPartitionedCall(dense/StatefulPartitionedCall_8:output:0,lstm_cell/StatefulPartitionedCall_7:output:1,lstm_cell/StatefulPartitionedCall_7:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_9StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_8:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_9StatefulPartitionedCall(dense/StatefulPartitionedCall_9:output:0,lstm_cell/StatefulPartitionedCall_8:output:1,lstm_cell/StatefulPartitionedCall_8:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_10StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_9:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_10StatefulPartitionedCall)dense/StatefulPartitionedCall_10:output:0,lstm_cell/StatefulPartitionedCall_9:output:1,lstm_cell/StatefulPartitionedCall_9:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_11StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_10:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_11StatefulPartitionedCall)dense/StatefulPartitionedCall_11:output:0-lstm_cell/StatefulPartitionedCall_10:output:1-lstm_cell/StatefulPartitionedCall_10:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_12StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_11:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_12StatefulPartitionedCall)dense/StatefulPartitionedCall_12:output:0-lstm_cell/StatefulPartitionedCall_11:output:1-lstm_cell/StatefulPartitionedCall_11:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_13StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_12:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_13StatefulPartitionedCall)dense/StatefulPartitionedCall_13:output:0-lstm_cell/StatefulPartitionedCall_12:output:1-lstm_cell/StatefulPartitionedCall_12:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_14StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_13:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_14StatefulPartitionedCall)dense/StatefulPartitionedCall_14:output:0-lstm_cell/StatefulPartitionedCall_13:output:1-lstm_cell/StatefulPartitionedCall_13:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_15StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_14:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_15StatefulPartitionedCall)dense/StatefulPartitionedCall_15:output:0-lstm_cell/StatefulPartitionedCall_14:output:1-lstm_cell/StatefulPartitionedCall_14:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_16StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_15:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_16StatefulPartitionedCall)dense/StatefulPartitionedCall_16:output:0-lstm_cell/StatefulPartitionedCall_15:output:1-lstm_cell/StatefulPartitionedCall_15:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_17StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_16:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_17StatefulPartitionedCall)dense/StatefulPartitionedCall_17:output:0-lstm_cell/StatefulPartitionedCall_16:output:1-lstm_cell/StatefulPartitionedCall_16:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_18StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_17:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_18StatefulPartitionedCall)dense/StatefulPartitionedCall_18:output:0-lstm_cell/StatefulPartitionedCall_17:output:1-lstm_cell/StatefulPartitionedCall_17:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_19StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_18:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_19StatefulPartitionedCall)dense/StatefulPartitionedCall_19:output:0-lstm_cell/StatefulPartitionedCall_18:output:1-lstm_cell/StatefulPartitionedCall_18:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_20StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_19:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_20StatefulPartitionedCall)dense/StatefulPartitionedCall_20:output:0-lstm_cell/StatefulPartitionedCall_19:output:1-lstm_cell/StatefulPartitionedCall_19:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_21StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_20:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_21StatefulPartitionedCall)dense/StatefulPartitionedCall_21:output:0-lstm_cell/StatefulPartitionedCall_20:output:1-lstm_cell/StatefulPartitionedCall_20:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_22StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_21:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_22StatefulPartitionedCall)dense/StatefulPartitionedCall_22:output:0-lstm_cell/StatefulPartitionedCall_21:output:1-lstm_cell/StatefulPartitionedCall_21:output:2	rnn_27141	rnn_27143	rnn_27145*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_23StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_22:output:0dense_27161dense_27163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
stackPack&dense/StatefulPartitionedCall:output:0(dense/StatefulPartitionedCall_1:output:0(dense/StatefulPartitionedCall_2:output:0(dense/StatefulPartitionedCall_3:output:0(dense/StatefulPartitionedCall_4:output:0(dense/StatefulPartitionedCall_5:output:0(dense/StatefulPartitionedCall_6:output:0(dense/StatefulPartitionedCall_7:output:0(dense/StatefulPartitionedCall_8:output:0(dense/StatefulPartitionedCall_9:output:0)dense/StatefulPartitionedCall_10:output:0)dense/StatefulPartitionedCall_11:output:0)dense/StatefulPartitionedCall_12:output:0)dense/StatefulPartitionedCall_13:output:0)dense/StatefulPartitionedCall_14:output:0)dense/StatefulPartitionedCall_15:output:0)dense/StatefulPartitionedCall_16:output:0)dense/StatefulPartitionedCall_17:output:0)dense/StatefulPartitionedCall_18:output:0)dense/StatefulPartitionedCall_19:output:0)dense/StatefulPartitionedCall_20:output:0)dense/StatefulPartitionedCall_21:output:0)dense/StatefulPartitionedCall_22:output:0)dense/StatefulPartitionedCall_23:output:0*
N*
T0*+
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:?????????`
IdentityIdentitytranspose:y:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense/StatefulPartitionedCall_1!^dense/StatefulPartitionedCall_10!^dense/StatefulPartitionedCall_11!^dense/StatefulPartitionedCall_12!^dense/StatefulPartitionedCall_13!^dense/StatefulPartitionedCall_14!^dense/StatefulPartitionedCall_15!^dense/StatefulPartitionedCall_16!^dense/StatefulPartitionedCall_17!^dense/StatefulPartitionedCall_18!^dense/StatefulPartitionedCall_19 ^dense/StatefulPartitionedCall_2!^dense/StatefulPartitionedCall_20!^dense/StatefulPartitionedCall_21!^dense/StatefulPartitionedCall_22!^dense/StatefulPartitionedCall_23 ^dense/StatefulPartitionedCall_3 ^dense/StatefulPartitionedCall_4 ^dense/StatefulPartitionedCall_5 ^dense/StatefulPartitionedCall_6 ^dense/StatefulPartitionedCall_7 ^dense/StatefulPartitionedCall_8 ^dense/StatefulPartitionedCall_9"^lstm_cell/StatefulPartitionedCall$^lstm_cell/StatefulPartitionedCall_1%^lstm_cell/StatefulPartitionedCall_10%^lstm_cell/StatefulPartitionedCall_11%^lstm_cell/StatefulPartitionedCall_12%^lstm_cell/StatefulPartitionedCall_13%^lstm_cell/StatefulPartitionedCall_14%^lstm_cell/StatefulPartitionedCall_15%^lstm_cell/StatefulPartitionedCall_16%^lstm_cell/StatefulPartitionedCall_17%^lstm_cell/StatefulPartitionedCall_18%^lstm_cell/StatefulPartitionedCall_19$^lstm_cell/StatefulPartitionedCall_2%^lstm_cell/StatefulPartitionedCall_20%^lstm_cell/StatefulPartitionedCall_21%^lstm_cell/StatefulPartitionedCall_22$^lstm_cell/StatefulPartitionedCall_3$^lstm_cell/StatefulPartitionedCall_4$^lstm_cell/StatefulPartitionedCall_5$^lstm_cell/StatefulPartitionedCall_6$^lstm_cell/StatefulPartitionedCall_7$^lstm_cell/StatefulPartitionedCall_8$^lstm_cell/StatefulPartitionedCall_9^rnn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????0: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense/StatefulPartitionedCall_1dense/StatefulPartitionedCall_12D
 dense/StatefulPartitionedCall_10 dense/StatefulPartitionedCall_102D
 dense/StatefulPartitionedCall_11 dense/StatefulPartitionedCall_112D
 dense/StatefulPartitionedCall_12 dense/StatefulPartitionedCall_122D
 dense/StatefulPartitionedCall_13 dense/StatefulPartitionedCall_132D
 dense/StatefulPartitionedCall_14 dense/StatefulPartitionedCall_142D
 dense/StatefulPartitionedCall_15 dense/StatefulPartitionedCall_152D
 dense/StatefulPartitionedCall_16 dense/StatefulPartitionedCall_162D
 dense/StatefulPartitionedCall_17 dense/StatefulPartitionedCall_172D
 dense/StatefulPartitionedCall_18 dense/StatefulPartitionedCall_182D
 dense/StatefulPartitionedCall_19 dense/StatefulPartitionedCall_192B
dense/StatefulPartitionedCall_2dense/StatefulPartitionedCall_22D
 dense/StatefulPartitionedCall_20 dense/StatefulPartitionedCall_202D
 dense/StatefulPartitionedCall_21 dense/StatefulPartitionedCall_212D
 dense/StatefulPartitionedCall_22 dense/StatefulPartitionedCall_222D
 dense/StatefulPartitionedCall_23 dense/StatefulPartitionedCall_232B
dense/StatefulPartitionedCall_3dense/StatefulPartitionedCall_32B
dense/StatefulPartitionedCall_4dense/StatefulPartitionedCall_42B
dense/StatefulPartitionedCall_5dense/StatefulPartitionedCall_52B
dense/StatefulPartitionedCall_6dense/StatefulPartitionedCall_62B
dense/StatefulPartitionedCall_7dense/StatefulPartitionedCall_72B
dense/StatefulPartitionedCall_8dense/StatefulPartitionedCall_82B
dense/StatefulPartitionedCall_9dense/StatefulPartitionedCall_92F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2J
#lstm_cell/StatefulPartitionedCall_1#lstm_cell/StatefulPartitionedCall_12L
$lstm_cell/StatefulPartitionedCall_10$lstm_cell/StatefulPartitionedCall_102L
$lstm_cell/StatefulPartitionedCall_11$lstm_cell/StatefulPartitionedCall_112L
$lstm_cell/StatefulPartitionedCall_12$lstm_cell/StatefulPartitionedCall_122L
$lstm_cell/StatefulPartitionedCall_13$lstm_cell/StatefulPartitionedCall_132L
$lstm_cell/StatefulPartitionedCall_14$lstm_cell/StatefulPartitionedCall_142L
$lstm_cell/StatefulPartitionedCall_15$lstm_cell/StatefulPartitionedCall_152L
$lstm_cell/StatefulPartitionedCall_16$lstm_cell/StatefulPartitionedCall_162L
$lstm_cell/StatefulPartitionedCall_17$lstm_cell/StatefulPartitionedCall_172L
$lstm_cell/StatefulPartitionedCall_18$lstm_cell/StatefulPartitionedCall_182L
$lstm_cell/StatefulPartitionedCall_19$lstm_cell/StatefulPartitionedCall_192J
#lstm_cell/StatefulPartitionedCall_2#lstm_cell/StatefulPartitionedCall_22L
$lstm_cell/StatefulPartitionedCall_20$lstm_cell/StatefulPartitionedCall_202L
$lstm_cell/StatefulPartitionedCall_21$lstm_cell/StatefulPartitionedCall_212L
$lstm_cell/StatefulPartitionedCall_22$lstm_cell/StatefulPartitionedCall_222J
#lstm_cell/StatefulPartitionedCall_3#lstm_cell/StatefulPartitionedCall_32J
#lstm_cell/StatefulPartitionedCall_4#lstm_cell/StatefulPartitionedCall_42J
#lstm_cell/StatefulPartitionedCall_5#lstm_cell/StatefulPartitionedCall_52J
#lstm_cell/StatefulPartitionedCall_6#lstm_cell/StatefulPartitionedCall_62J
#lstm_cell/StatefulPartitionedCall_7#lstm_cell/StatefulPartitionedCall_72J
#lstm_cell/StatefulPartitionedCall_8#lstm_cell/StatefulPartitionedCall_82J
#lstm_cell/StatefulPartitionedCall_9#lstm_cell/StatefulPartitionedCall_92:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs

?.
 __inference__wrapped_model_26660
input_1I
6feed_back_rnn_lstm_cell_matmul_readvariableop_resource:	?L
8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource:
??F
7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource:	?A
.feed_back_dense_matmul_readvariableop_resource:	?=
/feed_back_dense_biasadd_readvariableop_resource:
identity??&feed_back/dense/BiasAdd/ReadVariableOp?(feed_back/dense/BiasAdd_1/ReadVariableOp?)feed_back/dense/BiasAdd_10/ReadVariableOp?)feed_back/dense/BiasAdd_11/ReadVariableOp?)feed_back/dense/BiasAdd_12/ReadVariableOp?)feed_back/dense/BiasAdd_13/ReadVariableOp?)feed_back/dense/BiasAdd_14/ReadVariableOp?)feed_back/dense/BiasAdd_15/ReadVariableOp?)feed_back/dense/BiasAdd_16/ReadVariableOp?)feed_back/dense/BiasAdd_17/ReadVariableOp?)feed_back/dense/BiasAdd_18/ReadVariableOp?)feed_back/dense/BiasAdd_19/ReadVariableOp?(feed_back/dense/BiasAdd_2/ReadVariableOp?)feed_back/dense/BiasAdd_20/ReadVariableOp?)feed_back/dense/BiasAdd_21/ReadVariableOp?)feed_back/dense/BiasAdd_22/ReadVariableOp?)feed_back/dense/BiasAdd_23/ReadVariableOp?(feed_back/dense/BiasAdd_3/ReadVariableOp?(feed_back/dense/BiasAdd_4/ReadVariableOp?(feed_back/dense/BiasAdd_5/ReadVariableOp?(feed_back/dense/BiasAdd_6/ReadVariableOp?(feed_back/dense/BiasAdd_7/ReadVariableOp?(feed_back/dense/BiasAdd_8/ReadVariableOp?(feed_back/dense/BiasAdd_9/ReadVariableOp?%feed_back/dense/MatMul/ReadVariableOp?'feed_back/dense/MatMul_1/ReadVariableOp?(feed_back/dense/MatMul_10/ReadVariableOp?(feed_back/dense/MatMul_11/ReadVariableOp?(feed_back/dense/MatMul_12/ReadVariableOp?(feed_back/dense/MatMul_13/ReadVariableOp?(feed_back/dense/MatMul_14/ReadVariableOp?(feed_back/dense/MatMul_15/ReadVariableOp?(feed_back/dense/MatMul_16/ReadVariableOp?(feed_back/dense/MatMul_17/ReadVariableOp?(feed_back/dense/MatMul_18/ReadVariableOp?(feed_back/dense/MatMul_19/ReadVariableOp?'feed_back/dense/MatMul_2/ReadVariableOp?(feed_back/dense/MatMul_20/ReadVariableOp?(feed_back/dense/MatMul_21/ReadVariableOp?(feed_back/dense/MatMul_22/ReadVariableOp?(feed_back/dense/MatMul_23/ReadVariableOp?'feed_back/dense/MatMul_3/ReadVariableOp?'feed_back/dense/MatMul_4/ReadVariableOp?'feed_back/dense/MatMul_5/ReadVariableOp?'feed_back/dense/MatMul_6/ReadVariableOp?'feed_back/dense/MatMul_7/ReadVariableOp?'feed_back/dense/MatMul_8/ReadVariableOp?'feed_back/dense/MatMul_9/ReadVariableOp?*feed_back/lstm_cell/BiasAdd/ReadVariableOp?,feed_back/lstm_cell/BiasAdd_1/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_10/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_11/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_12/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_13/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_14/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_15/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_16/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_17/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_18/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_19/ReadVariableOp?,feed_back/lstm_cell/BiasAdd_2/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_20/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_21/ReadVariableOp?-feed_back/lstm_cell/BiasAdd_22/ReadVariableOp?,feed_back/lstm_cell/BiasAdd_3/ReadVariableOp?,feed_back/lstm_cell/BiasAdd_4/ReadVariableOp?,feed_back/lstm_cell/BiasAdd_5/ReadVariableOp?,feed_back/lstm_cell/BiasAdd_6/ReadVariableOp?,feed_back/lstm_cell/BiasAdd_7/ReadVariableOp?,feed_back/lstm_cell/BiasAdd_8/ReadVariableOp?,feed_back/lstm_cell/BiasAdd_9/ReadVariableOp?)feed_back/lstm_cell/MatMul/ReadVariableOp?+feed_back/lstm_cell/MatMul_1/ReadVariableOp?,feed_back/lstm_cell/MatMul_10/ReadVariableOp?,feed_back/lstm_cell/MatMul_11/ReadVariableOp?,feed_back/lstm_cell/MatMul_12/ReadVariableOp?,feed_back/lstm_cell/MatMul_13/ReadVariableOp?,feed_back/lstm_cell/MatMul_14/ReadVariableOp?,feed_back/lstm_cell/MatMul_15/ReadVariableOp?,feed_back/lstm_cell/MatMul_16/ReadVariableOp?,feed_back/lstm_cell/MatMul_17/ReadVariableOp?,feed_back/lstm_cell/MatMul_18/ReadVariableOp?,feed_back/lstm_cell/MatMul_19/ReadVariableOp?+feed_back/lstm_cell/MatMul_2/ReadVariableOp?,feed_back/lstm_cell/MatMul_20/ReadVariableOp?,feed_back/lstm_cell/MatMul_21/ReadVariableOp?,feed_back/lstm_cell/MatMul_22/ReadVariableOp?,feed_back/lstm_cell/MatMul_23/ReadVariableOp?,feed_back/lstm_cell/MatMul_24/ReadVariableOp?,feed_back/lstm_cell/MatMul_25/ReadVariableOp?,feed_back/lstm_cell/MatMul_26/ReadVariableOp?,feed_back/lstm_cell/MatMul_27/ReadVariableOp?,feed_back/lstm_cell/MatMul_28/ReadVariableOp?,feed_back/lstm_cell/MatMul_29/ReadVariableOp?+feed_back/lstm_cell/MatMul_3/ReadVariableOp?,feed_back/lstm_cell/MatMul_30/ReadVariableOp?,feed_back/lstm_cell/MatMul_31/ReadVariableOp?,feed_back/lstm_cell/MatMul_32/ReadVariableOp?,feed_back/lstm_cell/MatMul_33/ReadVariableOp?,feed_back/lstm_cell/MatMul_34/ReadVariableOp?,feed_back/lstm_cell/MatMul_35/ReadVariableOp?,feed_back/lstm_cell/MatMul_36/ReadVariableOp?,feed_back/lstm_cell/MatMul_37/ReadVariableOp?,feed_back/lstm_cell/MatMul_38/ReadVariableOp?,feed_back/lstm_cell/MatMul_39/ReadVariableOp?+feed_back/lstm_cell/MatMul_4/ReadVariableOp?,feed_back/lstm_cell/MatMul_40/ReadVariableOp?,feed_back/lstm_cell/MatMul_41/ReadVariableOp?,feed_back/lstm_cell/MatMul_42/ReadVariableOp?,feed_back/lstm_cell/MatMul_43/ReadVariableOp?,feed_back/lstm_cell/MatMul_44/ReadVariableOp?,feed_back/lstm_cell/MatMul_45/ReadVariableOp?+feed_back/lstm_cell/MatMul_5/ReadVariableOp?+feed_back/lstm_cell/MatMul_6/ReadVariableOp?+feed_back/lstm_cell/MatMul_7/ReadVariableOp?+feed_back/lstm_cell/MatMul_8/ReadVariableOp?+feed_back/lstm_cell/MatMul_9/ReadVariableOp?.feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOp?-feed_back/rnn/lstm_cell/MatMul/ReadVariableOp?/feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOp?feed_back/rnn/whileJ
feed_back/rnn/ShapeShapeinput_1*
T0*
_output_shapes
:k
!feed_back/rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#feed_back/rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#feed_back/rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
feed_back/rnn/strided_sliceStridedSlicefeed_back/rnn/Shape:output:0*feed_back/rnn/strided_slice/stack:output:0,feed_back/rnn/strided_slice/stack_1:output:0,feed_back/rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
feed_back/rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
feed_back/rnn/zeros/packedPack$feed_back/rnn/strided_slice:output:0%feed_back/rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
feed_back/rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
feed_back/rnn/zerosFill#feed_back/rnn/zeros/packed:output:0"feed_back/rnn/zeros/Const:output:0*
T0*(
_output_shapes
:??????????a
feed_back/rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
feed_back/rnn/zeros_1/packedPack$feed_back/rnn/strided_slice:output:0'feed_back/rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:`
feed_back/rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
feed_back/rnn/zeros_1Fill%feed_back/rnn/zeros_1/packed:output:0$feed_back/rnn/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????q
feed_back/rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
feed_back/rnn/transpose	Transposeinput_1%feed_back/rnn/transpose/perm:output:0*
T0*+
_output_shapes
:0?????????`
feed_back/rnn/Shape_1Shapefeed_back/rnn/transpose:y:0*
T0*
_output_shapes
:m
#feed_back/rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%feed_back/rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%feed_back/rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
feed_back/rnn/strided_slice_1StridedSlicefeed_back/rnn/Shape_1:output:0,feed_back/rnn/strided_slice_1/stack:output:0.feed_back/rnn/strided_slice_1/stack_1:output:0.feed_back/rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)feed_back/rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
feed_back/rnn/TensorArrayV2TensorListReserve2feed_back/rnn/TensorArrayV2/element_shape:output:0&feed_back/rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Cfeed_back/rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
5feed_back/rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorfeed_back/rnn/transpose:y:0Lfeed_back/rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???m
#feed_back/rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%feed_back/rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%feed_back/rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
feed_back/rnn/strided_slice_2StridedSlicefeed_back/rnn/transpose:y:0,feed_back/rnn/strided_slice_2/stack:output:0.feed_back/rnn/strided_slice_2/stack_1:output:0.feed_back/rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
-feed_back/rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/rnn/lstm_cell/MatMulMatMul&feed_back/rnn/strided_slice_2:output:05feed_back/rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
 feed_back/rnn/lstm_cell/MatMul_1MatMulfeed_back/rnn/zeros:output:07feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/rnn/lstm_cell/addAddV2(feed_back/rnn/lstm_cell/MatMul:product:0*feed_back/rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
.feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/rnn/lstm_cell/BiasAddBiasAddfeed_back/rnn/lstm_cell/add:z:06feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
'feed_back/rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/rnn/lstm_cell/splitSplit0feed_back/rnn/lstm_cell/split/split_dim:output:0(feed_back/rnn/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/rnn/lstm_cell/SigmoidSigmoid&feed_back/rnn/lstm_cell/split:output:0*
T0*(
_output_shapes
:???????????
!feed_back/rnn/lstm_cell/Sigmoid_1Sigmoid&feed_back/rnn/lstm_cell/split:output:1*
T0*(
_output_shapes
:???????????
feed_back/rnn/lstm_cell/mulMul%feed_back/rnn/lstm_cell/Sigmoid_1:y:0feed_back/rnn/zeros_1:output:0*
T0*(
_output_shapes
:??????????
feed_back/rnn/lstm_cell/TanhTanh&feed_back/rnn/lstm_cell/split:output:2*
T0*(
_output_shapes
:???????????
feed_back/rnn/lstm_cell/mul_1Mul#feed_back/rnn/lstm_cell/Sigmoid:y:0 feed_back/rnn/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:???????????
feed_back/rnn/lstm_cell/add_1AddV2feed_back/rnn/lstm_cell/mul:z:0!feed_back/rnn/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:???????????
!feed_back/rnn/lstm_cell/Sigmoid_2Sigmoid&feed_back/rnn/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????|
feed_back/rnn/lstm_cell/Tanh_1Tanh!feed_back/rnn/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:???????????
feed_back/rnn/lstm_cell/mul_2Mul%feed_back/rnn/lstm_cell/Sigmoid_2:y:0"feed_back/rnn/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????|
+feed_back/rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
feed_back/rnn/TensorArrayV2_1TensorListReserve4feed_back/rnn/TensorArrayV2_1/element_shape:output:0&feed_back/rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???T
feed_back/rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&feed_back/rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????b
 feed_back/rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
feed_back/rnn/whileWhile)feed_back/rnn/while/loop_counter:output:0/feed_back/rnn/while/maximum_iterations:output:0feed_back/rnn/time:output:0&feed_back/rnn/TensorArrayV2_1:handle:0feed_back/rnn/zeros:output:0feed_back/rnn/zeros_1:output:0&feed_back/rnn/strided_slice_1:output:0Efeed_back/rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:06feed_back_rnn_lstm_cell_matmul_readvariableop_resource8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( **
body"R 
feed_back_rnn_while_body_25993**
cond"R 
feed_back_rnn_while_cond_25992*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations ?
>feed_back/rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
0feed_back/rnn/TensorArrayV2Stack/TensorListStackTensorListStackfeed_back/rnn/while:output:3Gfeed_back/rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0??????????*
element_dtype0v
#feed_back/rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????o
%feed_back/rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%feed_back/rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
feed_back/rnn/strided_slice_3StridedSlice9feed_back/rnn/TensorArrayV2Stack/TensorListStack:tensor:0,feed_back/rnn/strided_slice_3/stack:output:0.feed_back/rnn/strided_slice_3/stack_1:output:0.feed_back/rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_masks
feed_back/rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
feed_back/rnn/transpose_1	Transpose9feed_back/rnn/TensorArrayV2Stack/TensorListStack:tensor:0'feed_back/rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????0??
%feed_back/dense/MatMul/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMulMatMul&feed_back/rnn/strided_slice_3:output:0-feed_back/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
&feed_back/dense/BiasAdd/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAddBiasAdd feed_back/dense/MatMul:product:0.feed_back/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/lstm_cell/MatMul/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMulMatMul feed_back/dense/BiasAdd:output:01feed_back/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+feed_back/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_1MatMulfeed_back/rnn/while:output:43feed_back/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/addAddV2$feed_back/lstm_cell/MatMul:product:0&feed_back/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*feed_back/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAddBiasAddfeed_back/lstm_cell/add:z:02feed_back/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#feed_back/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/splitSplit,feed_back/lstm_cell/split/split_dim:output:0$feed_back/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split}
feed_back/lstm_cell/SigmoidSigmoid"feed_back/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????
feed_back/lstm_cell/Sigmoid_1Sigmoid"feed_back/lstm_cell/split:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mulMul!feed_back/lstm_cell/Sigmoid_1:y:0feed_back/rnn/while:output:5*
T0*(
_output_shapes
:??????????w
feed_back/lstm_cell/TanhTanh"feed_back/lstm_cell/split:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_1Mulfeed_back/lstm_cell/Sigmoid:y:0feed_back/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_1AddV2feed_back/lstm_cell/mul:z:0feed_back/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????
feed_back/lstm_cell/Sigmoid_2Sigmoid"feed_back/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????t
feed_back/lstm_cell/Tanh_1Tanhfeed_back/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_2Mul!feed_back/lstm_cell/Sigmoid_2:y:0feed_back/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:???????????
'feed_back/dense/MatMul_1/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_1MatMulfeed_back/lstm_cell/mul_2:z:0/feed_back/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(feed_back/dense/BiasAdd_1/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_1BiasAdd"feed_back/dense/MatMul_1:product:00feed_back/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+feed_back/lstm_cell/MatMul_2/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_2MatMul"feed_back/dense/BiasAdd_1:output:03feed_back/lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+feed_back/lstm_cell/MatMul_3/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_3MatMulfeed_back/lstm_cell/mul_2:z:03feed_back/lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_2AddV2&feed_back/lstm_cell/MatMul_2:product:0&feed_back/lstm_cell/MatMul_3:product:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_1BiasAddfeed_back/lstm_cell/add_2:z:04feed_back/lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%feed_back/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_1Split.feed_back/lstm_cell/split_1/split_dim:output:0&feed_back/lstm_cell/BiasAdd_1:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_3Sigmoid$feed_back/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_4Sigmoid$feed_back/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_3Mul!feed_back/lstm_cell/Sigmoid_4:y:0feed_back/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????{
feed_back/lstm_cell/Tanh_2Tanh$feed_back/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_4Mul!feed_back/lstm_cell/Sigmoid_3:y:0feed_back/lstm_cell/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_3AddV2feed_back/lstm_cell/mul_3:z:0feed_back/lstm_cell/mul_4:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_5Sigmoid$feed_back/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????t
feed_back/lstm_cell/Tanh_3Tanhfeed_back/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_5Mul!feed_back/lstm_cell/Sigmoid_5:y:0feed_back/lstm_cell/Tanh_3:y:0*
T0*(
_output_shapes
:???????????
'feed_back/dense/MatMul_2/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_2MatMulfeed_back/lstm_cell/mul_5:z:0/feed_back/dense/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(feed_back/dense/BiasAdd_2/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_2BiasAdd"feed_back/dense/MatMul_2:product:00feed_back/dense/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+feed_back/lstm_cell/MatMul_4/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_4MatMul"feed_back/dense/BiasAdd_2:output:03feed_back/lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+feed_back/lstm_cell/MatMul_5/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_5MatMulfeed_back/lstm_cell/mul_5:z:03feed_back/lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_4AddV2&feed_back/lstm_cell/MatMul_4:product:0&feed_back/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_2BiasAddfeed_back/lstm_cell/add_4:z:04feed_back/lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%feed_back/lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_2Split.feed_back/lstm_cell/split_2/split_dim:output:0&feed_back/lstm_cell/BiasAdd_2:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_6Sigmoid$feed_back/lstm_cell/split_2:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_7Sigmoid$feed_back/lstm_cell/split_2:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_6Mul!feed_back/lstm_cell/Sigmoid_7:y:0feed_back/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????{
feed_back/lstm_cell/Tanh_4Tanh$feed_back/lstm_cell/split_2:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_7Mul!feed_back/lstm_cell/Sigmoid_6:y:0feed_back/lstm_cell/Tanh_4:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_5AddV2feed_back/lstm_cell/mul_6:z:0feed_back/lstm_cell/mul_7:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_8Sigmoid$feed_back/lstm_cell/split_2:output:3*
T0*(
_output_shapes
:??????????t
feed_back/lstm_cell/Tanh_5Tanhfeed_back/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_8Mul!feed_back/lstm_cell/Sigmoid_8:y:0feed_back/lstm_cell/Tanh_5:y:0*
T0*(
_output_shapes
:???????????
'feed_back/dense/MatMul_3/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_3MatMulfeed_back/lstm_cell/mul_8:z:0/feed_back/dense/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(feed_back/dense/BiasAdd_3/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_3BiasAdd"feed_back/dense/MatMul_3:product:00feed_back/dense/BiasAdd_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+feed_back/lstm_cell/MatMul_6/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_6MatMul"feed_back/dense/BiasAdd_3:output:03feed_back/lstm_cell/MatMul_6/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+feed_back/lstm_cell/MatMul_7/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_7MatMulfeed_back/lstm_cell/mul_8:z:03feed_back/lstm_cell/MatMul_7/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_6AddV2&feed_back/lstm_cell/MatMul_6:product:0&feed_back/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/BiasAdd_3/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_3BiasAddfeed_back/lstm_cell/add_6:z:04feed_back/lstm_cell/BiasAdd_3/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%feed_back/lstm_cell/split_3/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_3Split.feed_back/lstm_cell/split_3/split_dim:output:0&feed_back/lstm_cell/BiasAdd_3:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_9Sigmoid$feed_back/lstm_cell/split_3:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_10Sigmoid$feed_back/lstm_cell/split_3:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_9Mul"feed_back/lstm_cell/Sigmoid_10:y:0feed_back/lstm_cell/add_5:z:0*
T0*(
_output_shapes
:??????????{
feed_back/lstm_cell/Tanh_6Tanh$feed_back/lstm_cell/split_3:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_10Mul!feed_back/lstm_cell/Sigmoid_9:y:0feed_back/lstm_cell/Tanh_6:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_7AddV2feed_back/lstm_cell/mul_9:z:0feed_back/lstm_cell/mul_10:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_11Sigmoid$feed_back/lstm_cell/split_3:output:3*
T0*(
_output_shapes
:??????????t
feed_back/lstm_cell/Tanh_7Tanhfeed_back/lstm_cell/add_7:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_11Mul"feed_back/lstm_cell/Sigmoid_11:y:0feed_back/lstm_cell/Tanh_7:y:0*
T0*(
_output_shapes
:???????????
'feed_back/dense/MatMul_4/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_4MatMulfeed_back/lstm_cell/mul_11:z:0/feed_back/dense/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(feed_back/dense/BiasAdd_4/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_4BiasAdd"feed_back/dense/MatMul_4:product:00feed_back/dense/BiasAdd_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+feed_back/lstm_cell/MatMul_8/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_8MatMul"feed_back/dense/BiasAdd_4:output:03feed_back/lstm_cell/MatMul_8/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+feed_back/lstm_cell/MatMul_9/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_9MatMulfeed_back/lstm_cell/mul_11:z:03feed_back/lstm_cell/MatMul_9/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_8AddV2&feed_back/lstm_cell/MatMul_8:product:0&feed_back/lstm_cell/MatMul_9:product:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/BiasAdd_4/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_4BiasAddfeed_back/lstm_cell/add_8:z:04feed_back/lstm_cell/BiasAdd_4/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%feed_back/lstm_cell/split_4/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_4Split.feed_back/lstm_cell/split_4/split_dim:output:0&feed_back/lstm_cell/BiasAdd_4:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_12Sigmoid$feed_back/lstm_cell/split_4:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_13Sigmoid$feed_back/lstm_cell/split_4:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_12Mul"feed_back/lstm_cell/Sigmoid_13:y:0feed_back/lstm_cell/add_7:z:0*
T0*(
_output_shapes
:??????????{
feed_back/lstm_cell/Tanh_8Tanh$feed_back/lstm_cell/split_4:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_13Mul"feed_back/lstm_cell/Sigmoid_12:y:0feed_back/lstm_cell/Tanh_8:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_9AddV2feed_back/lstm_cell/mul_12:z:0feed_back/lstm_cell/mul_13:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_14Sigmoid$feed_back/lstm_cell/split_4:output:3*
T0*(
_output_shapes
:??????????t
feed_back/lstm_cell/Tanh_9Tanhfeed_back/lstm_cell/add_9:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_14Mul"feed_back/lstm_cell/Sigmoid_14:y:0feed_back/lstm_cell/Tanh_9:y:0*
T0*(
_output_shapes
:???????????
'feed_back/dense/MatMul_5/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_5MatMulfeed_back/lstm_cell/mul_14:z:0/feed_back/dense/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(feed_back/dense/BiasAdd_5/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_5BiasAdd"feed_back/dense/MatMul_5:product:00feed_back/dense/BiasAdd_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_10/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_10MatMul"feed_back/dense/BiasAdd_5:output:04feed_back/lstm_cell/MatMul_10/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_11/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_11MatMulfeed_back/lstm_cell/mul_14:z:04feed_back/lstm_cell/MatMul_11/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_10AddV2'feed_back/lstm_cell/MatMul_10:product:0'feed_back/lstm_cell/MatMul_11:product:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/BiasAdd_5/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_5BiasAddfeed_back/lstm_cell/add_10:z:04feed_back/lstm_cell/BiasAdd_5/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%feed_back/lstm_cell/split_5/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_5Split.feed_back/lstm_cell/split_5/split_dim:output:0&feed_back/lstm_cell/BiasAdd_5:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_15Sigmoid$feed_back/lstm_cell/split_5:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_16Sigmoid$feed_back/lstm_cell/split_5:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_15Mul"feed_back/lstm_cell/Sigmoid_16:y:0feed_back/lstm_cell/add_9:z:0*
T0*(
_output_shapes
:??????????|
feed_back/lstm_cell/Tanh_10Tanh$feed_back/lstm_cell/split_5:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_16Mul"feed_back/lstm_cell/Sigmoid_15:y:0feed_back/lstm_cell/Tanh_10:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_11AddV2feed_back/lstm_cell/mul_15:z:0feed_back/lstm_cell/mul_16:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_17Sigmoid$feed_back/lstm_cell/split_5:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_11Tanhfeed_back/lstm_cell/add_11:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_17Mul"feed_back/lstm_cell/Sigmoid_17:y:0feed_back/lstm_cell/Tanh_11:y:0*
T0*(
_output_shapes
:???????????
'feed_back/dense/MatMul_6/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_6MatMulfeed_back/lstm_cell/mul_17:z:0/feed_back/dense/MatMul_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(feed_back/dense/BiasAdd_6/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_6BiasAdd"feed_back/dense/MatMul_6:product:00feed_back/dense/BiasAdd_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_12/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_12MatMul"feed_back/dense/BiasAdd_6:output:04feed_back/lstm_cell/MatMul_12/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_13/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_13MatMulfeed_back/lstm_cell/mul_17:z:04feed_back/lstm_cell/MatMul_13/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_12AddV2'feed_back/lstm_cell/MatMul_12:product:0'feed_back/lstm_cell/MatMul_13:product:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/BiasAdd_6/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_6BiasAddfeed_back/lstm_cell/add_12:z:04feed_back/lstm_cell/BiasAdd_6/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%feed_back/lstm_cell/split_6/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_6Split.feed_back/lstm_cell/split_6/split_dim:output:0&feed_back/lstm_cell/BiasAdd_6:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_18Sigmoid$feed_back/lstm_cell/split_6:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_19Sigmoid$feed_back/lstm_cell/split_6:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_18Mul"feed_back/lstm_cell/Sigmoid_19:y:0feed_back/lstm_cell/add_11:z:0*
T0*(
_output_shapes
:??????????|
feed_back/lstm_cell/Tanh_12Tanh$feed_back/lstm_cell/split_6:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_19Mul"feed_back/lstm_cell/Sigmoid_18:y:0feed_back/lstm_cell/Tanh_12:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_13AddV2feed_back/lstm_cell/mul_18:z:0feed_back/lstm_cell/mul_19:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_20Sigmoid$feed_back/lstm_cell/split_6:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_13Tanhfeed_back/lstm_cell/add_13:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_20Mul"feed_back/lstm_cell/Sigmoid_20:y:0feed_back/lstm_cell/Tanh_13:y:0*
T0*(
_output_shapes
:???????????
'feed_back/dense/MatMul_7/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_7MatMulfeed_back/lstm_cell/mul_20:z:0/feed_back/dense/MatMul_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(feed_back/dense/BiasAdd_7/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_7BiasAdd"feed_back/dense/MatMul_7:product:00feed_back/dense/BiasAdd_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_14/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_14MatMul"feed_back/dense/BiasAdd_7:output:04feed_back/lstm_cell/MatMul_14/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_15/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_15MatMulfeed_back/lstm_cell/mul_20:z:04feed_back/lstm_cell/MatMul_15/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_14AddV2'feed_back/lstm_cell/MatMul_14:product:0'feed_back/lstm_cell/MatMul_15:product:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/BiasAdd_7/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_7BiasAddfeed_back/lstm_cell/add_14:z:04feed_back/lstm_cell/BiasAdd_7/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%feed_back/lstm_cell/split_7/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_7Split.feed_back/lstm_cell/split_7/split_dim:output:0&feed_back/lstm_cell/BiasAdd_7:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_21Sigmoid$feed_back/lstm_cell/split_7:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_22Sigmoid$feed_back/lstm_cell/split_7:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_21Mul"feed_back/lstm_cell/Sigmoid_22:y:0feed_back/lstm_cell/add_13:z:0*
T0*(
_output_shapes
:??????????|
feed_back/lstm_cell/Tanh_14Tanh$feed_back/lstm_cell/split_7:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_22Mul"feed_back/lstm_cell/Sigmoid_21:y:0feed_back/lstm_cell/Tanh_14:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_15AddV2feed_back/lstm_cell/mul_21:z:0feed_back/lstm_cell/mul_22:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_23Sigmoid$feed_back/lstm_cell/split_7:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_15Tanhfeed_back/lstm_cell/add_15:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_23Mul"feed_back/lstm_cell/Sigmoid_23:y:0feed_back/lstm_cell/Tanh_15:y:0*
T0*(
_output_shapes
:???????????
'feed_back/dense/MatMul_8/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_8MatMulfeed_back/lstm_cell/mul_23:z:0/feed_back/dense/MatMul_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(feed_back/dense/BiasAdd_8/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_8BiasAdd"feed_back/dense/MatMul_8:product:00feed_back/dense/BiasAdd_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_16/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_16MatMul"feed_back/dense/BiasAdd_8:output:04feed_back/lstm_cell/MatMul_16/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_17/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_17MatMulfeed_back/lstm_cell/mul_23:z:04feed_back/lstm_cell/MatMul_17/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_16AddV2'feed_back/lstm_cell/MatMul_16:product:0'feed_back/lstm_cell/MatMul_17:product:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/BiasAdd_8/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_8BiasAddfeed_back/lstm_cell/add_16:z:04feed_back/lstm_cell/BiasAdd_8/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%feed_back/lstm_cell/split_8/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_8Split.feed_back/lstm_cell/split_8/split_dim:output:0&feed_back/lstm_cell/BiasAdd_8:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_24Sigmoid$feed_back/lstm_cell/split_8:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_25Sigmoid$feed_back/lstm_cell/split_8:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_24Mul"feed_back/lstm_cell/Sigmoid_25:y:0feed_back/lstm_cell/add_15:z:0*
T0*(
_output_shapes
:??????????|
feed_back/lstm_cell/Tanh_16Tanh$feed_back/lstm_cell/split_8:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_25Mul"feed_back/lstm_cell/Sigmoid_24:y:0feed_back/lstm_cell/Tanh_16:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_17AddV2feed_back/lstm_cell/mul_24:z:0feed_back/lstm_cell/mul_25:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_26Sigmoid$feed_back/lstm_cell/split_8:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_17Tanhfeed_back/lstm_cell/add_17:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_26Mul"feed_back/lstm_cell/Sigmoid_26:y:0feed_back/lstm_cell/Tanh_17:y:0*
T0*(
_output_shapes
:???????????
'feed_back/dense/MatMul_9/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_9MatMulfeed_back/lstm_cell/mul_26:z:0/feed_back/dense/MatMul_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
(feed_back/dense/BiasAdd_9/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_9BiasAdd"feed_back/dense/MatMul_9:product:00feed_back/dense/BiasAdd_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_18/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_18MatMul"feed_back/dense/BiasAdd_9:output:04feed_back/lstm_cell/MatMul_18/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_19/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_19MatMulfeed_back/lstm_cell/mul_26:z:04feed_back/lstm_cell/MatMul_19/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_18AddV2'feed_back/lstm_cell/MatMul_18:product:0'feed_back/lstm_cell/MatMul_19:product:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/BiasAdd_9/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_9BiasAddfeed_back/lstm_cell/add_18:z:04feed_back/lstm_cell/BiasAdd_9/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????g
%feed_back/lstm_cell/split_9/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_9Split.feed_back/lstm_cell/split_9/split_dim:output:0&feed_back/lstm_cell/BiasAdd_9:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_27Sigmoid$feed_back/lstm_cell/split_9:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_28Sigmoid$feed_back/lstm_cell/split_9:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_27Mul"feed_back/lstm_cell/Sigmoid_28:y:0feed_back/lstm_cell/add_17:z:0*
T0*(
_output_shapes
:??????????|
feed_back/lstm_cell/Tanh_18Tanh$feed_back/lstm_cell/split_9:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_28Mul"feed_back/lstm_cell/Sigmoid_27:y:0feed_back/lstm_cell/Tanh_18:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_19AddV2feed_back/lstm_cell/mul_27:z:0feed_back/lstm_cell/mul_28:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_29Sigmoid$feed_back/lstm_cell/split_9:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_19Tanhfeed_back/lstm_cell/add_19:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_29Mul"feed_back/lstm_cell/Sigmoid_29:y:0feed_back/lstm_cell/Tanh_19:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_10/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_10MatMulfeed_back/lstm_cell/mul_29:z:00feed_back/dense/MatMul_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_10/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_10BiasAdd#feed_back/dense/MatMul_10:product:01feed_back/dense/BiasAdd_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_20/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_20MatMul#feed_back/dense/BiasAdd_10:output:04feed_back/lstm_cell/MatMul_20/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_21/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_21MatMulfeed_back/lstm_cell/mul_29:z:04feed_back/lstm_cell/MatMul_21/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_20AddV2'feed_back/lstm_cell/MatMul_20:product:0'feed_back/lstm_cell/MatMul_21:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_10/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_10BiasAddfeed_back/lstm_cell/add_20:z:05feed_back/lstm_cell/BiasAdd_10/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_10/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_10Split/feed_back/lstm_cell/split_10/split_dim:output:0'feed_back/lstm_cell/BiasAdd_10:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_30Sigmoid%feed_back/lstm_cell/split_10:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_31Sigmoid%feed_back/lstm_cell/split_10:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_30Mul"feed_back/lstm_cell/Sigmoid_31:y:0feed_back/lstm_cell/add_19:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_20Tanh%feed_back/lstm_cell/split_10:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_31Mul"feed_back/lstm_cell/Sigmoid_30:y:0feed_back/lstm_cell/Tanh_20:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_21AddV2feed_back/lstm_cell/mul_30:z:0feed_back/lstm_cell/mul_31:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_32Sigmoid%feed_back/lstm_cell/split_10:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_21Tanhfeed_back/lstm_cell/add_21:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_32Mul"feed_back/lstm_cell/Sigmoid_32:y:0feed_back/lstm_cell/Tanh_21:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_11/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_11MatMulfeed_back/lstm_cell/mul_32:z:00feed_back/dense/MatMul_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_11/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_11BiasAdd#feed_back/dense/MatMul_11:product:01feed_back/dense/BiasAdd_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_22/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_22MatMul#feed_back/dense/BiasAdd_11:output:04feed_back/lstm_cell/MatMul_22/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_23/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_23MatMulfeed_back/lstm_cell/mul_32:z:04feed_back/lstm_cell/MatMul_23/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_22AddV2'feed_back/lstm_cell/MatMul_22:product:0'feed_back/lstm_cell/MatMul_23:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_11/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_11BiasAddfeed_back/lstm_cell/add_22:z:05feed_back/lstm_cell/BiasAdd_11/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_11/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_11Split/feed_back/lstm_cell/split_11/split_dim:output:0'feed_back/lstm_cell/BiasAdd_11:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_33Sigmoid%feed_back/lstm_cell/split_11:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_34Sigmoid%feed_back/lstm_cell/split_11:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_33Mul"feed_back/lstm_cell/Sigmoid_34:y:0feed_back/lstm_cell/add_21:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_22Tanh%feed_back/lstm_cell/split_11:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_34Mul"feed_back/lstm_cell/Sigmoid_33:y:0feed_back/lstm_cell/Tanh_22:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_23AddV2feed_back/lstm_cell/mul_33:z:0feed_back/lstm_cell/mul_34:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_35Sigmoid%feed_back/lstm_cell/split_11:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_23Tanhfeed_back/lstm_cell/add_23:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_35Mul"feed_back/lstm_cell/Sigmoid_35:y:0feed_back/lstm_cell/Tanh_23:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_12/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_12MatMulfeed_back/lstm_cell/mul_35:z:00feed_back/dense/MatMul_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_12/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_12BiasAdd#feed_back/dense/MatMul_12:product:01feed_back/dense/BiasAdd_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_24/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_24MatMul#feed_back/dense/BiasAdd_12:output:04feed_back/lstm_cell/MatMul_24/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_25/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_25MatMulfeed_back/lstm_cell/mul_35:z:04feed_back/lstm_cell/MatMul_25/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_24AddV2'feed_back/lstm_cell/MatMul_24:product:0'feed_back/lstm_cell/MatMul_25:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_12/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_12BiasAddfeed_back/lstm_cell/add_24:z:05feed_back/lstm_cell/BiasAdd_12/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_12/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_12Split/feed_back/lstm_cell/split_12/split_dim:output:0'feed_back/lstm_cell/BiasAdd_12:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_36Sigmoid%feed_back/lstm_cell/split_12:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_37Sigmoid%feed_back/lstm_cell/split_12:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_36Mul"feed_back/lstm_cell/Sigmoid_37:y:0feed_back/lstm_cell/add_23:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_24Tanh%feed_back/lstm_cell/split_12:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_37Mul"feed_back/lstm_cell/Sigmoid_36:y:0feed_back/lstm_cell/Tanh_24:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_25AddV2feed_back/lstm_cell/mul_36:z:0feed_back/lstm_cell/mul_37:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_38Sigmoid%feed_back/lstm_cell/split_12:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_25Tanhfeed_back/lstm_cell/add_25:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_38Mul"feed_back/lstm_cell/Sigmoid_38:y:0feed_back/lstm_cell/Tanh_25:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_13/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_13MatMulfeed_back/lstm_cell/mul_38:z:00feed_back/dense/MatMul_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_13/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_13BiasAdd#feed_back/dense/MatMul_13:product:01feed_back/dense/BiasAdd_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_26/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_26MatMul#feed_back/dense/BiasAdd_13:output:04feed_back/lstm_cell/MatMul_26/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_27/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_27MatMulfeed_back/lstm_cell/mul_38:z:04feed_back/lstm_cell/MatMul_27/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_26AddV2'feed_back/lstm_cell/MatMul_26:product:0'feed_back/lstm_cell/MatMul_27:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_13/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_13BiasAddfeed_back/lstm_cell/add_26:z:05feed_back/lstm_cell/BiasAdd_13/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_13/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_13Split/feed_back/lstm_cell/split_13/split_dim:output:0'feed_back/lstm_cell/BiasAdd_13:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_39Sigmoid%feed_back/lstm_cell/split_13:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_40Sigmoid%feed_back/lstm_cell/split_13:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_39Mul"feed_back/lstm_cell/Sigmoid_40:y:0feed_back/lstm_cell/add_25:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_26Tanh%feed_back/lstm_cell/split_13:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_40Mul"feed_back/lstm_cell/Sigmoid_39:y:0feed_back/lstm_cell/Tanh_26:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_27AddV2feed_back/lstm_cell/mul_39:z:0feed_back/lstm_cell/mul_40:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_41Sigmoid%feed_back/lstm_cell/split_13:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_27Tanhfeed_back/lstm_cell/add_27:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_41Mul"feed_back/lstm_cell/Sigmoid_41:y:0feed_back/lstm_cell/Tanh_27:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_14/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_14MatMulfeed_back/lstm_cell/mul_41:z:00feed_back/dense/MatMul_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_14/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_14BiasAdd#feed_back/dense/MatMul_14:product:01feed_back/dense/BiasAdd_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_28/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_28MatMul#feed_back/dense/BiasAdd_14:output:04feed_back/lstm_cell/MatMul_28/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_29/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_29MatMulfeed_back/lstm_cell/mul_41:z:04feed_back/lstm_cell/MatMul_29/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_28AddV2'feed_back/lstm_cell/MatMul_28:product:0'feed_back/lstm_cell/MatMul_29:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_14/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_14BiasAddfeed_back/lstm_cell/add_28:z:05feed_back/lstm_cell/BiasAdd_14/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_14/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_14Split/feed_back/lstm_cell/split_14/split_dim:output:0'feed_back/lstm_cell/BiasAdd_14:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_42Sigmoid%feed_back/lstm_cell/split_14:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_43Sigmoid%feed_back/lstm_cell/split_14:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_42Mul"feed_back/lstm_cell/Sigmoid_43:y:0feed_back/lstm_cell/add_27:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_28Tanh%feed_back/lstm_cell/split_14:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_43Mul"feed_back/lstm_cell/Sigmoid_42:y:0feed_back/lstm_cell/Tanh_28:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_29AddV2feed_back/lstm_cell/mul_42:z:0feed_back/lstm_cell/mul_43:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_44Sigmoid%feed_back/lstm_cell/split_14:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_29Tanhfeed_back/lstm_cell/add_29:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_44Mul"feed_back/lstm_cell/Sigmoid_44:y:0feed_back/lstm_cell/Tanh_29:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_15/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_15MatMulfeed_back/lstm_cell/mul_44:z:00feed_back/dense/MatMul_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_15/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_15BiasAdd#feed_back/dense/MatMul_15:product:01feed_back/dense/BiasAdd_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_30/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_30MatMul#feed_back/dense/BiasAdd_15:output:04feed_back/lstm_cell/MatMul_30/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_31/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_31MatMulfeed_back/lstm_cell/mul_44:z:04feed_back/lstm_cell/MatMul_31/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_30AddV2'feed_back/lstm_cell/MatMul_30:product:0'feed_back/lstm_cell/MatMul_31:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_15/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_15BiasAddfeed_back/lstm_cell/add_30:z:05feed_back/lstm_cell/BiasAdd_15/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_15/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_15Split/feed_back/lstm_cell/split_15/split_dim:output:0'feed_back/lstm_cell/BiasAdd_15:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_45Sigmoid%feed_back/lstm_cell/split_15:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_46Sigmoid%feed_back/lstm_cell/split_15:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_45Mul"feed_back/lstm_cell/Sigmoid_46:y:0feed_back/lstm_cell/add_29:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_30Tanh%feed_back/lstm_cell/split_15:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_46Mul"feed_back/lstm_cell/Sigmoid_45:y:0feed_back/lstm_cell/Tanh_30:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_31AddV2feed_back/lstm_cell/mul_45:z:0feed_back/lstm_cell/mul_46:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_47Sigmoid%feed_back/lstm_cell/split_15:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_31Tanhfeed_back/lstm_cell/add_31:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_47Mul"feed_back/lstm_cell/Sigmoid_47:y:0feed_back/lstm_cell/Tanh_31:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_16/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_16MatMulfeed_back/lstm_cell/mul_47:z:00feed_back/dense/MatMul_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_16/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_16BiasAdd#feed_back/dense/MatMul_16:product:01feed_back/dense/BiasAdd_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_32/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_32MatMul#feed_back/dense/BiasAdd_16:output:04feed_back/lstm_cell/MatMul_32/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_33/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_33MatMulfeed_back/lstm_cell/mul_47:z:04feed_back/lstm_cell/MatMul_33/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_32AddV2'feed_back/lstm_cell/MatMul_32:product:0'feed_back/lstm_cell/MatMul_33:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_16/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_16BiasAddfeed_back/lstm_cell/add_32:z:05feed_back/lstm_cell/BiasAdd_16/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_16/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_16Split/feed_back/lstm_cell/split_16/split_dim:output:0'feed_back/lstm_cell/BiasAdd_16:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_48Sigmoid%feed_back/lstm_cell/split_16:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_49Sigmoid%feed_back/lstm_cell/split_16:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_48Mul"feed_back/lstm_cell/Sigmoid_49:y:0feed_back/lstm_cell/add_31:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_32Tanh%feed_back/lstm_cell/split_16:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_49Mul"feed_back/lstm_cell/Sigmoid_48:y:0feed_back/lstm_cell/Tanh_32:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_33AddV2feed_back/lstm_cell/mul_48:z:0feed_back/lstm_cell/mul_49:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_50Sigmoid%feed_back/lstm_cell/split_16:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_33Tanhfeed_back/lstm_cell/add_33:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_50Mul"feed_back/lstm_cell/Sigmoid_50:y:0feed_back/lstm_cell/Tanh_33:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_17/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_17MatMulfeed_back/lstm_cell/mul_50:z:00feed_back/dense/MatMul_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_17/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_17BiasAdd#feed_back/dense/MatMul_17:product:01feed_back/dense/BiasAdd_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_34/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_34MatMul#feed_back/dense/BiasAdd_17:output:04feed_back/lstm_cell/MatMul_34/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_35/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_35MatMulfeed_back/lstm_cell/mul_50:z:04feed_back/lstm_cell/MatMul_35/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_34AddV2'feed_back/lstm_cell/MatMul_34:product:0'feed_back/lstm_cell/MatMul_35:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_17/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_17BiasAddfeed_back/lstm_cell/add_34:z:05feed_back/lstm_cell/BiasAdd_17/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_17/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_17Split/feed_back/lstm_cell/split_17/split_dim:output:0'feed_back/lstm_cell/BiasAdd_17:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_51Sigmoid%feed_back/lstm_cell/split_17:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_52Sigmoid%feed_back/lstm_cell/split_17:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_51Mul"feed_back/lstm_cell/Sigmoid_52:y:0feed_back/lstm_cell/add_33:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_34Tanh%feed_back/lstm_cell/split_17:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_52Mul"feed_back/lstm_cell/Sigmoid_51:y:0feed_back/lstm_cell/Tanh_34:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_35AddV2feed_back/lstm_cell/mul_51:z:0feed_back/lstm_cell/mul_52:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_53Sigmoid%feed_back/lstm_cell/split_17:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_35Tanhfeed_back/lstm_cell/add_35:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_53Mul"feed_back/lstm_cell/Sigmoid_53:y:0feed_back/lstm_cell/Tanh_35:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_18/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_18MatMulfeed_back/lstm_cell/mul_53:z:00feed_back/dense/MatMul_18/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_18/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_18BiasAdd#feed_back/dense/MatMul_18:product:01feed_back/dense/BiasAdd_18/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_36/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_36MatMul#feed_back/dense/BiasAdd_18:output:04feed_back/lstm_cell/MatMul_36/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_37/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_37MatMulfeed_back/lstm_cell/mul_53:z:04feed_back/lstm_cell/MatMul_37/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_36AddV2'feed_back/lstm_cell/MatMul_36:product:0'feed_back/lstm_cell/MatMul_37:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_18/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_18BiasAddfeed_back/lstm_cell/add_36:z:05feed_back/lstm_cell/BiasAdd_18/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_18/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_18Split/feed_back/lstm_cell/split_18/split_dim:output:0'feed_back/lstm_cell/BiasAdd_18:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_54Sigmoid%feed_back/lstm_cell/split_18:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_55Sigmoid%feed_back/lstm_cell/split_18:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_54Mul"feed_back/lstm_cell/Sigmoid_55:y:0feed_back/lstm_cell/add_35:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_36Tanh%feed_back/lstm_cell/split_18:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_55Mul"feed_back/lstm_cell/Sigmoid_54:y:0feed_back/lstm_cell/Tanh_36:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_37AddV2feed_back/lstm_cell/mul_54:z:0feed_back/lstm_cell/mul_55:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_56Sigmoid%feed_back/lstm_cell/split_18:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_37Tanhfeed_back/lstm_cell/add_37:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_56Mul"feed_back/lstm_cell/Sigmoid_56:y:0feed_back/lstm_cell/Tanh_37:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_19/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_19MatMulfeed_back/lstm_cell/mul_56:z:00feed_back/dense/MatMul_19/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_19/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_19BiasAdd#feed_back/dense/MatMul_19:product:01feed_back/dense/BiasAdd_19/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_38/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_38MatMul#feed_back/dense/BiasAdd_19:output:04feed_back/lstm_cell/MatMul_38/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_39/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_39MatMulfeed_back/lstm_cell/mul_56:z:04feed_back/lstm_cell/MatMul_39/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_38AddV2'feed_back/lstm_cell/MatMul_38:product:0'feed_back/lstm_cell/MatMul_39:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_19/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_19BiasAddfeed_back/lstm_cell/add_38:z:05feed_back/lstm_cell/BiasAdd_19/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_19/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_19Split/feed_back/lstm_cell/split_19/split_dim:output:0'feed_back/lstm_cell/BiasAdd_19:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_57Sigmoid%feed_back/lstm_cell/split_19:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_58Sigmoid%feed_back/lstm_cell/split_19:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_57Mul"feed_back/lstm_cell/Sigmoid_58:y:0feed_back/lstm_cell/add_37:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_38Tanh%feed_back/lstm_cell/split_19:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_58Mul"feed_back/lstm_cell/Sigmoid_57:y:0feed_back/lstm_cell/Tanh_38:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_39AddV2feed_back/lstm_cell/mul_57:z:0feed_back/lstm_cell/mul_58:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_59Sigmoid%feed_back/lstm_cell/split_19:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_39Tanhfeed_back/lstm_cell/add_39:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_59Mul"feed_back/lstm_cell/Sigmoid_59:y:0feed_back/lstm_cell/Tanh_39:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_20/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_20MatMulfeed_back/lstm_cell/mul_59:z:00feed_back/dense/MatMul_20/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_20/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_20BiasAdd#feed_back/dense/MatMul_20:product:01feed_back/dense/BiasAdd_20/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_40/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_40MatMul#feed_back/dense/BiasAdd_20:output:04feed_back/lstm_cell/MatMul_40/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_41/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_41MatMulfeed_back/lstm_cell/mul_59:z:04feed_back/lstm_cell/MatMul_41/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_40AddV2'feed_back/lstm_cell/MatMul_40:product:0'feed_back/lstm_cell/MatMul_41:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_20/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_20BiasAddfeed_back/lstm_cell/add_40:z:05feed_back/lstm_cell/BiasAdd_20/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_20/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_20Split/feed_back/lstm_cell/split_20/split_dim:output:0'feed_back/lstm_cell/BiasAdd_20:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_60Sigmoid%feed_back/lstm_cell/split_20:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_61Sigmoid%feed_back/lstm_cell/split_20:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_60Mul"feed_back/lstm_cell/Sigmoid_61:y:0feed_back/lstm_cell/add_39:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_40Tanh%feed_back/lstm_cell/split_20:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_61Mul"feed_back/lstm_cell/Sigmoid_60:y:0feed_back/lstm_cell/Tanh_40:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_41AddV2feed_back/lstm_cell/mul_60:z:0feed_back/lstm_cell/mul_61:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_62Sigmoid%feed_back/lstm_cell/split_20:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_41Tanhfeed_back/lstm_cell/add_41:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_62Mul"feed_back/lstm_cell/Sigmoid_62:y:0feed_back/lstm_cell/Tanh_41:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_21/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_21MatMulfeed_back/lstm_cell/mul_62:z:00feed_back/dense/MatMul_21/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_21/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_21BiasAdd#feed_back/dense/MatMul_21:product:01feed_back/dense/BiasAdd_21/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_42/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_42MatMul#feed_back/dense/BiasAdd_21:output:04feed_back/lstm_cell/MatMul_42/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_43/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_43MatMulfeed_back/lstm_cell/mul_62:z:04feed_back/lstm_cell/MatMul_43/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_42AddV2'feed_back/lstm_cell/MatMul_42:product:0'feed_back/lstm_cell/MatMul_43:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_21/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_21BiasAddfeed_back/lstm_cell/add_42:z:05feed_back/lstm_cell/BiasAdd_21/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_21/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_21Split/feed_back/lstm_cell/split_21/split_dim:output:0'feed_back/lstm_cell/BiasAdd_21:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_63Sigmoid%feed_back/lstm_cell/split_21:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_64Sigmoid%feed_back/lstm_cell/split_21:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_63Mul"feed_back/lstm_cell/Sigmoid_64:y:0feed_back/lstm_cell/add_41:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_42Tanh%feed_back/lstm_cell/split_21:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_64Mul"feed_back/lstm_cell/Sigmoid_63:y:0feed_back/lstm_cell/Tanh_42:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_43AddV2feed_back/lstm_cell/mul_63:z:0feed_back/lstm_cell/mul_64:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_65Sigmoid%feed_back/lstm_cell/split_21:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_43Tanhfeed_back/lstm_cell/add_43:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_65Mul"feed_back/lstm_cell/Sigmoid_65:y:0feed_back/lstm_cell/Tanh_43:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_22/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_22MatMulfeed_back/lstm_cell/mul_65:z:00feed_back/dense/MatMul_22/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_22/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_22BiasAdd#feed_back/dense/MatMul_22:product:01feed_back/dense/BiasAdd_22/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,feed_back/lstm_cell/MatMul_44/ReadVariableOpReadVariableOp6feed_back_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/lstm_cell/MatMul_44MatMul#feed_back/dense/BiasAdd_22:output:04feed_back/lstm_cell/MatMul_44/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,feed_back/lstm_cell/MatMul_45/ReadVariableOpReadVariableOp8feed_back_rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
feed_back/lstm_cell/MatMul_45MatMulfeed_back/lstm_cell/mul_65:z:04feed_back/lstm_cell/MatMul_45/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_44AddV2'feed_back/lstm_cell/MatMul_44:product:0'feed_back/lstm_cell/MatMul_45:product:0*
T0*(
_output_shapes
:???????????
-feed_back/lstm_cell/BiasAdd_22/ReadVariableOpReadVariableOp7feed_back_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
feed_back/lstm_cell/BiasAdd_22BiasAddfeed_back/lstm_cell/add_44:z:05feed_back/lstm_cell/BiasAdd_22/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&feed_back/lstm_cell/split_22/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/lstm_cell/split_22Split/feed_back/lstm_cell/split_22/split_dim:output:0'feed_back/lstm_cell/BiasAdd_22:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
feed_back/lstm_cell/Sigmoid_66Sigmoid%feed_back/lstm_cell/split_22:output:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_67Sigmoid%feed_back/lstm_cell/split_22:output:1*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_66Mul"feed_back/lstm_cell/Sigmoid_67:y:0feed_back/lstm_cell/add_43:z:0*
T0*(
_output_shapes
:??????????}
feed_back/lstm_cell/Tanh_44Tanh%feed_back/lstm_cell/split_22:output:2*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_67Mul"feed_back/lstm_cell/Sigmoid_66:y:0feed_back/lstm_cell/Tanh_44:y:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/add_45AddV2feed_back/lstm_cell/mul_66:z:0feed_back/lstm_cell/mul_67:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/Sigmoid_68Sigmoid%feed_back/lstm_cell/split_22:output:3*
T0*(
_output_shapes
:??????????v
feed_back/lstm_cell/Tanh_45Tanhfeed_back/lstm_cell/add_45:z:0*
T0*(
_output_shapes
:???????????
feed_back/lstm_cell/mul_68Mul"feed_back/lstm_cell/Sigmoid_68:y:0feed_back/lstm_cell/Tanh_45:y:0*
T0*(
_output_shapes
:???????????
(feed_back/dense/MatMul_23/ReadVariableOpReadVariableOp.feed_back_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
feed_back/dense/MatMul_23MatMulfeed_back/lstm_cell/mul_68:z:00feed_back/dense/MatMul_23/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)feed_back/dense/BiasAdd_23/ReadVariableOpReadVariableOp/feed_back_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
feed_back/dense/BiasAdd_23BiasAdd#feed_back/dense/MatMul_23:product:01feed_back/dense/BiasAdd_23/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
feed_back/stackPack feed_back/dense/BiasAdd:output:0"feed_back/dense/BiasAdd_1:output:0"feed_back/dense/BiasAdd_2:output:0"feed_back/dense/BiasAdd_3:output:0"feed_back/dense/BiasAdd_4:output:0"feed_back/dense/BiasAdd_5:output:0"feed_back/dense/BiasAdd_6:output:0"feed_back/dense/BiasAdd_7:output:0"feed_back/dense/BiasAdd_8:output:0"feed_back/dense/BiasAdd_9:output:0#feed_back/dense/BiasAdd_10:output:0#feed_back/dense/BiasAdd_11:output:0#feed_back/dense/BiasAdd_12:output:0#feed_back/dense/BiasAdd_13:output:0#feed_back/dense/BiasAdd_14:output:0#feed_back/dense/BiasAdd_15:output:0#feed_back/dense/BiasAdd_16:output:0#feed_back/dense/BiasAdd_17:output:0#feed_back/dense/BiasAdd_18:output:0#feed_back/dense/BiasAdd_19:output:0#feed_back/dense/BiasAdd_20:output:0#feed_back/dense/BiasAdd_21:output:0#feed_back/dense/BiasAdd_22:output:0#feed_back/dense/BiasAdd_23:output:0*
N*
T0*+
_output_shapes
:?????????m
feed_back/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
feed_back/transpose	Transposefeed_back/stack:output:0!feed_back/transpose/perm:output:0*
T0*+
_output_shapes
:?????????j
IdentityIdentityfeed_back/transpose:y:0^NoOp*
T0*+
_output_shapes
:??????????+
NoOpNoOp'^feed_back/dense/BiasAdd/ReadVariableOp)^feed_back/dense/BiasAdd_1/ReadVariableOp*^feed_back/dense/BiasAdd_10/ReadVariableOp*^feed_back/dense/BiasAdd_11/ReadVariableOp*^feed_back/dense/BiasAdd_12/ReadVariableOp*^feed_back/dense/BiasAdd_13/ReadVariableOp*^feed_back/dense/BiasAdd_14/ReadVariableOp*^feed_back/dense/BiasAdd_15/ReadVariableOp*^feed_back/dense/BiasAdd_16/ReadVariableOp*^feed_back/dense/BiasAdd_17/ReadVariableOp*^feed_back/dense/BiasAdd_18/ReadVariableOp*^feed_back/dense/BiasAdd_19/ReadVariableOp)^feed_back/dense/BiasAdd_2/ReadVariableOp*^feed_back/dense/BiasAdd_20/ReadVariableOp*^feed_back/dense/BiasAdd_21/ReadVariableOp*^feed_back/dense/BiasAdd_22/ReadVariableOp*^feed_back/dense/BiasAdd_23/ReadVariableOp)^feed_back/dense/BiasAdd_3/ReadVariableOp)^feed_back/dense/BiasAdd_4/ReadVariableOp)^feed_back/dense/BiasAdd_5/ReadVariableOp)^feed_back/dense/BiasAdd_6/ReadVariableOp)^feed_back/dense/BiasAdd_7/ReadVariableOp)^feed_back/dense/BiasAdd_8/ReadVariableOp)^feed_back/dense/BiasAdd_9/ReadVariableOp&^feed_back/dense/MatMul/ReadVariableOp(^feed_back/dense/MatMul_1/ReadVariableOp)^feed_back/dense/MatMul_10/ReadVariableOp)^feed_back/dense/MatMul_11/ReadVariableOp)^feed_back/dense/MatMul_12/ReadVariableOp)^feed_back/dense/MatMul_13/ReadVariableOp)^feed_back/dense/MatMul_14/ReadVariableOp)^feed_back/dense/MatMul_15/ReadVariableOp)^feed_back/dense/MatMul_16/ReadVariableOp)^feed_back/dense/MatMul_17/ReadVariableOp)^feed_back/dense/MatMul_18/ReadVariableOp)^feed_back/dense/MatMul_19/ReadVariableOp(^feed_back/dense/MatMul_2/ReadVariableOp)^feed_back/dense/MatMul_20/ReadVariableOp)^feed_back/dense/MatMul_21/ReadVariableOp)^feed_back/dense/MatMul_22/ReadVariableOp)^feed_back/dense/MatMul_23/ReadVariableOp(^feed_back/dense/MatMul_3/ReadVariableOp(^feed_back/dense/MatMul_4/ReadVariableOp(^feed_back/dense/MatMul_5/ReadVariableOp(^feed_back/dense/MatMul_6/ReadVariableOp(^feed_back/dense/MatMul_7/ReadVariableOp(^feed_back/dense/MatMul_8/ReadVariableOp(^feed_back/dense/MatMul_9/ReadVariableOp+^feed_back/lstm_cell/BiasAdd/ReadVariableOp-^feed_back/lstm_cell/BiasAdd_1/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_10/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_11/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_12/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_13/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_14/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_15/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_16/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_17/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_18/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_19/ReadVariableOp-^feed_back/lstm_cell/BiasAdd_2/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_20/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_21/ReadVariableOp.^feed_back/lstm_cell/BiasAdd_22/ReadVariableOp-^feed_back/lstm_cell/BiasAdd_3/ReadVariableOp-^feed_back/lstm_cell/BiasAdd_4/ReadVariableOp-^feed_back/lstm_cell/BiasAdd_5/ReadVariableOp-^feed_back/lstm_cell/BiasAdd_6/ReadVariableOp-^feed_back/lstm_cell/BiasAdd_7/ReadVariableOp-^feed_back/lstm_cell/BiasAdd_8/ReadVariableOp-^feed_back/lstm_cell/BiasAdd_9/ReadVariableOp*^feed_back/lstm_cell/MatMul/ReadVariableOp,^feed_back/lstm_cell/MatMul_1/ReadVariableOp-^feed_back/lstm_cell/MatMul_10/ReadVariableOp-^feed_back/lstm_cell/MatMul_11/ReadVariableOp-^feed_back/lstm_cell/MatMul_12/ReadVariableOp-^feed_back/lstm_cell/MatMul_13/ReadVariableOp-^feed_back/lstm_cell/MatMul_14/ReadVariableOp-^feed_back/lstm_cell/MatMul_15/ReadVariableOp-^feed_back/lstm_cell/MatMul_16/ReadVariableOp-^feed_back/lstm_cell/MatMul_17/ReadVariableOp-^feed_back/lstm_cell/MatMul_18/ReadVariableOp-^feed_back/lstm_cell/MatMul_19/ReadVariableOp,^feed_back/lstm_cell/MatMul_2/ReadVariableOp-^feed_back/lstm_cell/MatMul_20/ReadVariableOp-^feed_back/lstm_cell/MatMul_21/ReadVariableOp-^feed_back/lstm_cell/MatMul_22/ReadVariableOp-^feed_back/lstm_cell/MatMul_23/ReadVariableOp-^feed_back/lstm_cell/MatMul_24/ReadVariableOp-^feed_back/lstm_cell/MatMul_25/ReadVariableOp-^feed_back/lstm_cell/MatMul_26/ReadVariableOp-^feed_back/lstm_cell/MatMul_27/ReadVariableOp-^feed_back/lstm_cell/MatMul_28/ReadVariableOp-^feed_back/lstm_cell/MatMul_29/ReadVariableOp,^feed_back/lstm_cell/MatMul_3/ReadVariableOp-^feed_back/lstm_cell/MatMul_30/ReadVariableOp-^feed_back/lstm_cell/MatMul_31/ReadVariableOp-^feed_back/lstm_cell/MatMul_32/ReadVariableOp-^feed_back/lstm_cell/MatMul_33/ReadVariableOp-^feed_back/lstm_cell/MatMul_34/ReadVariableOp-^feed_back/lstm_cell/MatMul_35/ReadVariableOp-^feed_back/lstm_cell/MatMul_36/ReadVariableOp-^feed_back/lstm_cell/MatMul_37/ReadVariableOp-^feed_back/lstm_cell/MatMul_38/ReadVariableOp-^feed_back/lstm_cell/MatMul_39/ReadVariableOp,^feed_back/lstm_cell/MatMul_4/ReadVariableOp-^feed_back/lstm_cell/MatMul_40/ReadVariableOp-^feed_back/lstm_cell/MatMul_41/ReadVariableOp-^feed_back/lstm_cell/MatMul_42/ReadVariableOp-^feed_back/lstm_cell/MatMul_43/ReadVariableOp-^feed_back/lstm_cell/MatMul_44/ReadVariableOp-^feed_back/lstm_cell/MatMul_45/ReadVariableOp,^feed_back/lstm_cell/MatMul_5/ReadVariableOp,^feed_back/lstm_cell/MatMul_6/ReadVariableOp,^feed_back/lstm_cell/MatMul_7/ReadVariableOp,^feed_back/lstm_cell/MatMul_8/ReadVariableOp,^feed_back/lstm_cell/MatMul_9/ReadVariableOp/^feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOp.^feed_back/rnn/lstm_cell/MatMul/ReadVariableOp0^feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOp^feed_back/rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????0: : : : : 2P
&feed_back/dense/BiasAdd/ReadVariableOp&feed_back/dense/BiasAdd/ReadVariableOp2T
(feed_back/dense/BiasAdd_1/ReadVariableOp(feed_back/dense/BiasAdd_1/ReadVariableOp2V
)feed_back/dense/BiasAdd_10/ReadVariableOp)feed_back/dense/BiasAdd_10/ReadVariableOp2V
)feed_back/dense/BiasAdd_11/ReadVariableOp)feed_back/dense/BiasAdd_11/ReadVariableOp2V
)feed_back/dense/BiasAdd_12/ReadVariableOp)feed_back/dense/BiasAdd_12/ReadVariableOp2V
)feed_back/dense/BiasAdd_13/ReadVariableOp)feed_back/dense/BiasAdd_13/ReadVariableOp2V
)feed_back/dense/BiasAdd_14/ReadVariableOp)feed_back/dense/BiasAdd_14/ReadVariableOp2V
)feed_back/dense/BiasAdd_15/ReadVariableOp)feed_back/dense/BiasAdd_15/ReadVariableOp2V
)feed_back/dense/BiasAdd_16/ReadVariableOp)feed_back/dense/BiasAdd_16/ReadVariableOp2V
)feed_back/dense/BiasAdd_17/ReadVariableOp)feed_back/dense/BiasAdd_17/ReadVariableOp2V
)feed_back/dense/BiasAdd_18/ReadVariableOp)feed_back/dense/BiasAdd_18/ReadVariableOp2V
)feed_back/dense/BiasAdd_19/ReadVariableOp)feed_back/dense/BiasAdd_19/ReadVariableOp2T
(feed_back/dense/BiasAdd_2/ReadVariableOp(feed_back/dense/BiasAdd_2/ReadVariableOp2V
)feed_back/dense/BiasAdd_20/ReadVariableOp)feed_back/dense/BiasAdd_20/ReadVariableOp2V
)feed_back/dense/BiasAdd_21/ReadVariableOp)feed_back/dense/BiasAdd_21/ReadVariableOp2V
)feed_back/dense/BiasAdd_22/ReadVariableOp)feed_back/dense/BiasAdd_22/ReadVariableOp2V
)feed_back/dense/BiasAdd_23/ReadVariableOp)feed_back/dense/BiasAdd_23/ReadVariableOp2T
(feed_back/dense/BiasAdd_3/ReadVariableOp(feed_back/dense/BiasAdd_3/ReadVariableOp2T
(feed_back/dense/BiasAdd_4/ReadVariableOp(feed_back/dense/BiasAdd_4/ReadVariableOp2T
(feed_back/dense/BiasAdd_5/ReadVariableOp(feed_back/dense/BiasAdd_5/ReadVariableOp2T
(feed_back/dense/BiasAdd_6/ReadVariableOp(feed_back/dense/BiasAdd_6/ReadVariableOp2T
(feed_back/dense/BiasAdd_7/ReadVariableOp(feed_back/dense/BiasAdd_7/ReadVariableOp2T
(feed_back/dense/BiasAdd_8/ReadVariableOp(feed_back/dense/BiasAdd_8/ReadVariableOp2T
(feed_back/dense/BiasAdd_9/ReadVariableOp(feed_back/dense/BiasAdd_9/ReadVariableOp2N
%feed_back/dense/MatMul/ReadVariableOp%feed_back/dense/MatMul/ReadVariableOp2R
'feed_back/dense/MatMul_1/ReadVariableOp'feed_back/dense/MatMul_1/ReadVariableOp2T
(feed_back/dense/MatMul_10/ReadVariableOp(feed_back/dense/MatMul_10/ReadVariableOp2T
(feed_back/dense/MatMul_11/ReadVariableOp(feed_back/dense/MatMul_11/ReadVariableOp2T
(feed_back/dense/MatMul_12/ReadVariableOp(feed_back/dense/MatMul_12/ReadVariableOp2T
(feed_back/dense/MatMul_13/ReadVariableOp(feed_back/dense/MatMul_13/ReadVariableOp2T
(feed_back/dense/MatMul_14/ReadVariableOp(feed_back/dense/MatMul_14/ReadVariableOp2T
(feed_back/dense/MatMul_15/ReadVariableOp(feed_back/dense/MatMul_15/ReadVariableOp2T
(feed_back/dense/MatMul_16/ReadVariableOp(feed_back/dense/MatMul_16/ReadVariableOp2T
(feed_back/dense/MatMul_17/ReadVariableOp(feed_back/dense/MatMul_17/ReadVariableOp2T
(feed_back/dense/MatMul_18/ReadVariableOp(feed_back/dense/MatMul_18/ReadVariableOp2T
(feed_back/dense/MatMul_19/ReadVariableOp(feed_back/dense/MatMul_19/ReadVariableOp2R
'feed_back/dense/MatMul_2/ReadVariableOp'feed_back/dense/MatMul_2/ReadVariableOp2T
(feed_back/dense/MatMul_20/ReadVariableOp(feed_back/dense/MatMul_20/ReadVariableOp2T
(feed_back/dense/MatMul_21/ReadVariableOp(feed_back/dense/MatMul_21/ReadVariableOp2T
(feed_back/dense/MatMul_22/ReadVariableOp(feed_back/dense/MatMul_22/ReadVariableOp2T
(feed_back/dense/MatMul_23/ReadVariableOp(feed_back/dense/MatMul_23/ReadVariableOp2R
'feed_back/dense/MatMul_3/ReadVariableOp'feed_back/dense/MatMul_3/ReadVariableOp2R
'feed_back/dense/MatMul_4/ReadVariableOp'feed_back/dense/MatMul_4/ReadVariableOp2R
'feed_back/dense/MatMul_5/ReadVariableOp'feed_back/dense/MatMul_5/ReadVariableOp2R
'feed_back/dense/MatMul_6/ReadVariableOp'feed_back/dense/MatMul_6/ReadVariableOp2R
'feed_back/dense/MatMul_7/ReadVariableOp'feed_back/dense/MatMul_7/ReadVariableOp2R
'feed_back/dense/MatMul_8/ReadVariableOp'feed_back/dense/MatMul_8/ReadVariableOp2R
'feed_back/dense/MatMul_9/ReadVariableOp'feed_back/dense/MatMul_9/ReadVariableOp2X
*feed_back/lstm_cell/BiasAdd/ReadVariableOp*feed_back/lstm_cell/BiasAdd/ReadVariableOp2\
,feed_back/lstm_cell/BiasAdd_1/ReadVariableOp,feed_back/lstm_cell/BiasAdd_1/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_10/ReadVariableOp-feed_back/lstm_cell/BiasAdd_10/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_11/ReadVariableOp-feed_back/lstm_cell/BiasAdd_11/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_12/ReadVariableOp-feed_back/lstm_cell/BiasAdd_12/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_13/ReadVariableOp-feed_back/lstm_cell/BiasAdd_13/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_14/ReadVariableOp-feed_back/lstm_cell/BiasAdd_14/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_15/ReadVariableOp-feed_back/lstm_cell/BiasAdd_15/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_16/ReadVariableOp-feed_back/lstm_cell/BiasAdd_16/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_17/ReadVariableOp-feed_back/lstm_cell/BiasAdd_17/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_18/ReadVariableOp-feed_back/lstm_cell/BiasAdd_18/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_19/ReadVariableOp-feed_back/lstm_cell/BiasAdd_19/ReadVariableOp2\
,feed_back/lstm_cell/BiasAdd_2/ReadVariableOp,feed_back/lstm_cell/BiasAdd_2/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_20/ReadVariableOp-feed_back/lstm_cell/BiasAdd_20/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_21/ReadVariableOp-feed_back/lstm_cell/BiasAdd_21/ReadVariableOp2^
-feed_back/lstm_cell/BiasAdd_22/ReadVariableOp-feed_back/lstm_cell/BiasAdd_22/ReadVariableOp2\
,feed_back/lstm_cell/BiasAdd_3/ReadVariableOp,feed_back/lstm_cell/BiasAdd_3/ReadVariableOp2\
,feed_back/lstm_cell/BiasAdd_4/ReadVariableOp,feed_back/lstm_cell/BiasAdd_4/ReadVariableOp2\
,feed_back/lstm_cell/BiasAdd_5/ReadVariableOp,feed_back/lstm_cell/BiasAdd_5/ReadVariableOp2\
,feed_back/lstm_cell/BiasAdd_6/ReadVariableOp,feed_back/lstm_cell/BiasAdd_6/ReadVariableOp2\
,feed_back/lstm_cell/BiasAdd_7/ReadVariableOp,feed_back/lstm_cell/BiasAdd_7/ReadVariableOp2\
,feed_back/lstm_cell/BiasAdd_8/ReadVariableOp,feed_back/lstm_cell/BiasAdd_8/ReadVariableOp2\
,feed_back/lstm_cell/BiasAdd_9/ReadVariableOp,feed_back/lstm_cell/BiasAdd_9/ReadVariableOp2V
)feed_back/lstm_cell/MatMul/ReadVariableOp)feed_back/lstm_cell/MatMul/ReadVariableOp2Z
+feed_back/lstm_cell/MatMul_1/ReadVariableOp+feed_back/lstm_cell/MatMul_1/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_10/ReadVariableOp,feed_back/lstm_cell/MatMul_10/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_11/ReadVariableOp,feed_back/lstm_cell/MatMul_11/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_12/ReadVariableOp,feed_back/lstm_cell/MatMul_12/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_13/ReadVariableOp,feed_back/lstm_cell/MatMul_13/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_14/ReadVariableOp,feed_back/lstm_cell/MatMul_14/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_15/ReadVariableOp,feed_back/lstm_cell/MatMul_15/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_16/ReadVariableOp,feed_back/lstm_cell/MatMul_16/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_17/ReadVariableOp,feed_back/lstm_cell/MatMul_17/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_18/ReadVariableOp,feed_back/lstm_cell/MatMul_18/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_19/ReadVariableOp,feed_back/lstm_cell/MatMul_19/ReadVariableOp2Z
+feed_back/lstm_cell/MatMul_2/ReadVariableOp+feed_back/lstm_cell/MatMul_2/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_20/ReadVariableOp,feed_back/lstm_cell/MatMul_20/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_21/ReadVariableOp,feed_back/lstm_cell/MatMul_21/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_22/ReadVariableOp,feed_back/lstm_cell/MatMul_22/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_23/ReadVariableOp,feed_back/lstm_cell/MatMul_23/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_24/ReadVariableOp,feed_back/lstm_cell/MatMul_24/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_25/ReadVariableOp,feed_back/lstm_cell/MatMul_25/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_26/ReadVariableOp,feed_back/lstm_cell/MatMul_26/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_27/ReadVariableOp,feed_back/lstm_cell/MatMul_27/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_28/ReadVariableOp,feed_back/lstm_cell/MatMul_28/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_29/ReadVariableOp,feed_back/lstm_cell/MatMul_29/ReadVariableOp2Z
+feed_back/lstm_cell/MatMul_3/ReadVariableOp+feed_back/lstm_cell/MatMul_3/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_30/ReadVariableOp,feed_back/lstm_cell/MatMul_30/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_31/ReadVariableOp,feed_back/lstm_cell/MatMul_31/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_32/ReadVariableOp,feed_back/lstm_cell/MatMul_32/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_33/ReadVariableOp,feed_back/lstm_cell/MatMul_33/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_34/ReadVariableOp,feed_back/lstm_cell/MatMul_34/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_35/ReadVariableOp,feed_back/lstm_cell/MatMul_35/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_36/ReadVariableOp,feed_back/lstm_cell/MatMul_36/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_37/ReadVariableOp,feed_back/lstm_cell/MatMul_37/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_38/ReadVariableOp,feed_back/lstm_cell/MatMul_38/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_39/ReadVariableOp,feed_back/lstm_cell/MatMul_39/ReadVariableOp2Z
+feed_back/lstm_cell/MatMul_4/ReadVariableOp+feed_back/lstm_cell/MatMul_4/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_40/ReadVariableOp,feed_back/lstm_cell/MatMul_40/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_41/ReadVariableOp,feed_back/lstm_cell/MatMul_41/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_42/ReadVariableOp,feed_back/lstm_cell/MatMul_42/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_43/ReadVariableOp,feed_back/lstm_cell/MatMul_43/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_44/ReadVariableOp,feed_back/lstm_cell/MatMul_44/ReadVariableOp2\
,feed_back/lstm_cell/MatMul_45/ReadVariableOp,feed_back/lstm_cell/MatMul_45/ReadVariableOp2Z
+feed_back/lstm_cell/MatMul_5/ReadVariableOp+feed_back/lstm_cell/MatMul_5/ReadVariableOp2Z
+feed_back/lstm_cell/MatMul_6/ReadVariableOp+feed_back/lstm_cell/MatMul_6/ReadVariableOp2Z
+feed_back/lstm_cell/MatMul_7/ReadVariableOp+feed_back/lstm_cell/MatMul_7/ReadVariableOp2Z
+feed_back/lstm_cell/MatMul_8/ReadVariableOp+feed_back/lstm_cell/MatMul_8/ReadVariableOp2Z
+feed_back/lstm_cell/MatMul_9/ReadVariableOp+feed_back/lstm_cell/MatMul_9/ReadVariableOp2`
.feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOp.feed_back/rnn/lstm_cell/BiasAdd/ReadVariableOp2^
-feed_back/rnn/lstm_cell/MatMul/ReadVariableOp-feed_back/rnn/lstm_cell/MatMul/ReadVariableOp2b
/feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOp/feed_back/rnn/lstm_cell/MatMul_1/ReadVariableOp2*
feed_back/rnn/whilefeed_back/rnn/while:T P
+
_output_shapes
:?????????0
!
_user_specified_name	input_1
?
?
)__inference_feed_back_layer_call_fn_27422
input_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_feed_back_layer_call_and_return_conditional_losses_27409s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????0: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????0
!
_user_specified_name	input_1
??
?$
D__inference_feed_back_layer_call_and_return_conditional_losses_29150

inputs?
,rnn_lstm_cell_matmul_readvariableop_resource:	?B
.rnn_lstm_cell_matmul_1_readvariableop_resource:
??<
-rnn_lstm_cell_biasadd_readvariableop_resource:	?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/BiasAdd_1/ReadVariableOp?dense/BiasAdd_10/ReadVariableOp?dense/BiasAdd_11/ReadVariableOp?dense/BiasAdd_12/ReadVariableOp?dense/BiasAdd_13/ReadVariableOp?dense/BiasAdd_14/ReadVariableOp?dense/BiasAdd_15/ReadVariableOp?dense/BiasAdd_16/ReadVariableOp?dense/BiasAdd_17/ReadVariableOp?dense/BiasAdd_18/ReadVariableOp?dense/BiasAdd_19/ReadVariableOp?dense/BiasAdd_2/ReadVariableOp?dense/BiasAdd_20/ReadVariableOp?dense/BiasAdd_21/ReadVariableOp?dense/BiasAdd_22/ReadVariableOp?dense/BiasAdd_23/ReadVariableOp?dense/BiasAdd_3/ReadVariableOp?dense/BiasAdd_4/ReadVariableOp?dense/BiasAdd_5/ReadVariableOp?dense/BiasAdd_6/ReadVariableOp?dense/BiasAdd_7/ReadVariableOp?dense/BiasAdd_8/ReadVariableOp?dense/BiasAdd_9/ReadVariableOp?dense/MatMul/ReadVariableOp?dense/MatMul_1/ReadVariableOp?dense/MatMul_10/ReadVariableOp?dense/MatMul_11/ReadVariableOp?dense/MatMul_12/ReadVariableOp?dense/MatMul_13/ReadVariableOp?dense/MatMul_14/ReadVariableOp?dense/MatMul_15/ReadVariableOp?dense/MatMul_16/ReadVariableOp?dense/MatMul_17/ReadVariableOp?dense/MatMul_18/ReadVariableOp?dense/MatMul_19/ReadVariableOp?dense/MatMul_2/ReadVariableOp?dense/MatMul_20/ReadVariableOp?dense/MatMul_21/ReadVariableOp?dense/MatMul_22/ReadVariableOp?dense/MatMul_23/ReadVariableOp?dense/MatMul_3/ReadVariableOp?dense/MatMul_4/ReadVariableOp?dense/MatMul_5/ReadVariableOp?dense/MatMul_6/ReadVariableOp?dense/MatMul_7/ReadVariableOp?dense/MatMul_8/ReadVariableOp?dense/MatMul_9/ReadVariableOp? lstm_cell/BiasAdd/ReadVariableOp?"lstm_cell/BiasAdd_1/ReadVariableOp?#lstm_cell/BiasAdd_10/ReadVariableOp?#lstm_cell/BiasAdd_11/ReadVariableOp?#lstm_cell/BiasAdd_12/ReadVariableOp?#lstm_cell/BiasAdd_13/ReadVariableOp?#lstm_cell/BiasAdd_14/ReadVariableOp?#lstm_cell/BiasAdd_15/ReadVariableOp?#lstm_cell/BiasAdd_16/ReadVariableOp?#lstm_cell/BiasAdd_17/ReadVariableOp?#lstm_cell/BiasAdd_18/ReadVariableOp?#lstm_cell/BiasAdd_19/ReadVariableOp?"lstm_cell/BiasAdd_2/ReadVariableOp?#lstm_cell/BiasAdd_20/ReadVariableOp?#lstm_cell/BiasAdd_21/ReadVariableOp?#lstm_cell/BiasAdd_22/ReadVariableOp?"lstm_cell/BiasAdd_3/ReadVariableOp?"lstm_cell/BiasAdd_4/ReadVariableOp?"lstm_cell/BiasAdd_5/ReadVariableOp?"lstm_cell/BiasAdd_6/ReadVariableOp?"lstm_cell/BiasAdd_7/ReadVariableOp?"lstm_cell/BiasAdd_8/ReadVariableOp?"lstm_cell/BiasAdd_9/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?"lstm_cell/MatMul_10/ReadVariableOp?"lstm_cell/MatMul_11/ReadVariableOp?"lstm_cell/MatMul_12/ReadVariableOp?"lstm_cell/MatMul_13/ReadVariableOp?"lstm_cell/MatMul_14/ReadVariableOp?"lstm_cell/MatMul_15/ReadVariableOp?"lstm_cell/MatMul_16/ReadVariableOp?"lstm_cell/MatMul_17/ReadVariableOp?"lstm_cell/MatMul_18/ReadVariableOp?"lstm_cell/MatMul_19/ReadVariableOp?!lstm_cell/MatMul_2/ReadVariableOp?"lstm_cell/MatMul_20/ReadVariableOp?"lstm_cell/MatMul_21/ReadVariableOp?"lstm_cell/MatMul_22/ReadVariableOp?"lstm_cell/MatMul_23/ReadVariableOp?"lstm_cell/MatMul_24/ReadVariableOp?"lstm_cell/MatMul_25/ReadVariableOp?"lstm_cell/MatMul_26/ReadVariableOp?"lstm_cell/MatMul_27/ReadVariableOp?"lstm_cell/MatMul_28/ReadVariableOp?"lstm_cell/MatMul_29/ReadVariableOp?!lstm_cell/MatMul_3/ReadVariableOp?"lstm_cell/MatMul_30/ReadVariableOp?"lstm_cell/MatMul_31/ReadVariableOp?"lstm_cell/MatMul_32/ReadVariableOp?"lstm_cell/MatMul_33/ReadVariableOp?"lstm_cell/MatMul_34/ReadVariableOp?"lstm_cell/MatMul_35/ReadVariableOp?"lstm_cell/MatMul_36/ReadVariableOp?"lstm_cell/MatMul_37/ReadVariableOp?"lstm_cell/MatMul_38/ReadVariableOp?"lstm_cell/MatMul_39/ReadVariableOp?!lstm_cell/MatMul_4/ReadVariableOp?"lstm_cell/MatMul_40/ReadVariableOp?"lstm_cell/MatMul_41/ReadVariableOp?"lstm_cell/MatMul_42/ReadVariableOp?"lstm_cell/MatMul_43/ReadVariableOp?"lstm_cell/MatMul_44/ReadVariableOp?"lstm_cell/MatMul_45/ReadVariableOp?!lstm_cell/MatMul_5/ReadVariableOp?!lstm_cell/MatMul_6/ReadVariableOp?!lstm_cell/MatMul_7/ReadVariableOp?!lstm_cell/MatMul_8/ReadVariableOp?!lstm_cell/MatMul_9/ReadVariableOp?$rnn/lstm_cell/BiasAdd/ReadVariableOp?#rnn/lstm_cell/MatMul/ReadVariableOp?%rnn/lstm_cell/MatMul_1/ReadVariableOp?	rnn/while?
	rnn/ShapeShapeinputs*
T0*
_output_shapes
:a
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    y
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0*(
_output_shapes
:??????????W
rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
rnn/zeros_1/packedPackrnn/strided_slice:output:0rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rnn/zeros_1Fillrnn/zeros_1/packed:output:0rnn/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????g
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
rnn/transpose	Transposeinputsrnn/transpose/perm:output:0*
T0*+
_output_shapes
:0?????????L
rnn/Shape_1Shapernn/transpose:y:0*
T0*
_output_shapes
:c
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???c
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
#rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
rnn/lstm_cell/MatMulMatMulrnn/strided_slice_2:output:0+rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
rnn/lstm_cell/MatMul_1MatMulrnn/zeros:output:0-rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
rnn/lstm_cell/addAddV2rnn/lstm_cell/MatMul:product:0 rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
rnn/lstm_cell/BiasAddBiasAddrnn/lstm_cell/add:z:0,rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
rnn/lstm_cell/splitSplit&rnn/lstm_cell/split/split_dim:output:0rnn/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitq
rnn/lstm_cell/SigmoidSigmoidrnn/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????s
rnn/lstm_cell/Sigmoid_1Sigmoidrnn/lstm_cell/split:output:1*
T0*(
_output_shapes
:??????????~
rnn/lstm_cell/mulMulrnn/lstm_cell/Sigmoid_1:y:0rnn/zeros_1:output:0*
T0*(
_output_shapes
:??????????k
rnn/lstm_cell/TanhTanhrnn/lstm_cell/split:output:2*
T0*(
_output_shapes
:???????????
rnn/lstm_cell/mul_1Mulrnn/lstm_cell/Sigmoid:y:0rnn/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????
rnn/lstm_cell/add_1AddV2rnn/lstm_cell/mul:z:0rnn/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????s
rnn/lstm_cell/Sigmoid_2Sigmoidrnn/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????h
rnn/lstm_cell/Tanh_1Tanhrnn/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:???????????
rnn/lstm_cell/mul_2Mulrnn/lstm_cell/Sigmoid_2:y:0rnn/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????r
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???J
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : g
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????X
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/zeros_1:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0,rnn_lstm_cell_matmul_readvariableop_resource.rnn_lstm_cell_matmul_1_readvariableop_resource-rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
rnn_while_body_28483* 
condR
rnn_while_cond_28482*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations ?
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0??????????*
element_dtype0l
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????e
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maski
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????0??
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMulMatMulrnn/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
lstm_cell/MatMul/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMulMatMuldense/BiasAdd:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_1MatMulrnn/while:output:4)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:??????????k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:??????????t
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0rnn/while:output:5*
T0*(
_output_shapes
:??????????c
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*(
_output_shapes
:??????????t
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_1/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_1MatMullstm_cell/mul_2:z:0%dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_1BiasAdddense/MatMul_1:product:0&dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_2MatMuldense/BiasAdd_1:output:0)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitm
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*(
_output_shapes
:??????????m
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*(
_output_shapes
:??????????w
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????g
lstm_cell/Tanh_2Tanhlstm_cell/split_1:output:2*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Tanh_2:y:0*
T0*(
_output_shapes
:??????????u
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
T0*(
_output_shapes
:??????????m
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_3Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Tanh_3:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_2/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_2MatMullstm_cell/mul_5:z:0%dense/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_2/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_2BiasAdddense/MatMul_2:product:0&dense/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_4MatMuldense/BiasAdd_2:output:0)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitm
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*(
_output_shapes
:??????????m
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*(
_output_shapes
:??????????w
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*(
_output_shapes
:??????????g
lstm_cell/Tanh_4Tanhlstm_cell/split_2:output:2*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Tanh_4:y:0*
T0*(
_output_shapes
:??????????u
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
T0*(
_output_shapes
:??????????m
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_5Tanhlstm_cell/add_5:z:0*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Tanh_5:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_3/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_3MatMullstm_cell/mul_8:z:0%dense/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_3/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_3BiasAdddense/MatMul_3:product:0&dense/BiasAdd_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!lstm_cell/MatMul_6/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_6MatMuldense/BiasAdd_3:output:0)lstm_cell/MatMul_6/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_7/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_7MatMullstm_cell/mul_8:z:0)lstm_cell/MatMul_7/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_6AddV2lstm_cell/MatMul_6:product:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_3/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_3BiasAddlstm_cell/add_6:z:0*lstm_cell/BiasAdd_3/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_3/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_3Split$lstm_cell/split_3/split_dim:output:0lstm_cell/BiasAdd_3:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitm
lstm_cell/Sigmoid_9Sigmoidlstm_cell/split_3:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_10Sigmoidlstm_cell/split_3:output:1*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_9Mullstm_cell/Sigmoid_10:y:0lstm_cell/add_5:z:0*
T0*(
_output_shapes
:??????????g
lstm_cell/Tanh_6Tanhlstm_cell/split_3:output:2*
T0*(
_output_shapes
:??????????y
lstm_cell/mul_10Mullstm_cell/Sigmoid_9:y:0lstm_cell/Tanh_6:y:0*
T0*(
_output_shapes
:??????????v
lstm_cell/add_7AddV2lstm_cell/mul_9:z:0lstm_cell/mul_10:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_11Sigmoidlstm_cell/split_3:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_7Tanhlstm_cell/add_7:z:0*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_11Mullstm_cell/Sigmoid_11:y:0lstm_cell/Tanh_7:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_4/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_4MatMullstm_cell/mul_11:z:0%dense/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_4/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_4BiasAdddense/MatMul_4:product:0&dense/BiasAdd_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!lstm_cell/MatMul_8/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_8MatMuldense/BiasAdd_4:output:0)lstm_cell/MatMul_8/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_9/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_9MatMullstm_cell/mul_11:z:0)lstm_cell/MatMul_9/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_8AddV2lstm_cell/MatMul_8:product:0lstm_cell/MatMul_9:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_4/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_4BiasAddlstm_cell/add_8:z:0*lstm_cell/BiasAdd_4/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_4/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_4Split$lstm_cell/split_4/split_dim:output:0lstm_cell/BiasAdd_4:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitn
lstm_cell/Sigmoid_12Sigmoidlstm_cell/split_4:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_13Sigmoidlstm_cell/split_4:output:1*
T0*(
_output_shapes
:??????????y
lstm_cell/mul_12Mullstm_cell/Sigmoid_13:y:0lstm_cell/add_7:z:0*
T0*(
_output_shapes
:??????????g
lstm_cell/Tanh_8Tanhlstm_cell/split_4:output:2*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_13Mullstm_cell/Sigmoid_12:y:0lstm_cell/Tanh_8:y:0*
T0*(
_output_shapes
:??????????w
lstm_cell/add_9AddV2lstm_cell/mul_12:z:0lstm_cell/mul_13:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_14Sigmoidlstm_cell/split_4:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_9Tanhlstm_cell/add_9:z:0*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_14Mullstm_cell/Sigmoid_14:y:0lstm_cell/Tanh_9:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_5/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_5MatMullstm_cell/mul_14:z:0%dense/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_5/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_5BiasAdddense/MatMul_5:product:0&dense/BiasAdd_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_10/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_10MatMuldense/BiasAdd_5:output:0*lstm_cell/MatMul_10/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_11/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_11MatMullstm_cell/mul_14:z:0*lstm_cell/MatMul_11/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_10AddV2lstm_cell/MatMul_10:product:0lstm_cell/MatMul_11:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_5/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_5BiasAddlstm_cell/add_10:z:0*lstm_cell/BiasAdd_5/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_5/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_5Split$lstm_cell/split_5/split_dim:output:0lstm_cell/BiasAdd_5:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitn
lstm_cell/Sigmoid_15Sigmoidlstm_cell/split_5:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_16Sigmoidlstm_cell/split_5:output:1*
T0*(
_output_shapes
:??????????y
lstm_cell/mul_15Mullstm_cell/Sigmoid_16:y:0lstm_cell/add_9:z:0*
T0*(
_output_shapes
:??????????h
lstm_cell/Tanh_10Tanhlstm_cell/split_5:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_16Mullstm_cell/Sigmoid_15:y:0lstm_cell/Tanh_10:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_11AddV2lstm_cell/mul_15:z:0lstm_cell/mul_16:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_17Sigmoidlstm_cell/split_5:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_11Tanhlstm_cell/add_11:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_17Mullstm_cell/Sigmoid_17:y:0lstm_cell/Tanh_11:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_6/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_6MatMullstm_cell/mul_17:z:0%dense/MatMul_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_6/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_6BiasAdddense/MatMul_6:product:0&dense/BiasAdd_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_12/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_12MatMuldense/BiasAdd_6:output:0*lstm_cell/MatMul_12/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_13/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_13MatMullstm_cell/mul_17:z:0*lstm_cell/MatMul_13/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_12AddV2lstm_cell/MatMul_12:product:0lstm_cell/MatMul_13:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_6/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_6BiasAddlstm_cell/add_12:z:0*lstm_cell/BiasAdd_6/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_6/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_6Split$lstm_cell/split_6/split_dim:output:0lstm_cell/BiasAdd_6:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitn
lstm_cell/Sigmoid_18Sigmoidlstm_cell/split_6:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_19Sigmoidlstm_cell/split_6:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_18Mullstm_cell/Sigmoid_19:y:0lstm_cell/add_11:z:0*
T0*(
_output_shapes
:??????????h
lstm_cell/Tanh_12Tanhlstm_cell/split_6:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_19Mullstm_cell/Sigmoid_18:y:0lstm_cell/Tanh_12:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_13AddV2lstm_cell/mul_18:z:0lstm_cell/mul_19:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_20Sigmoidlstm_cell/split_6:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_13Tanhlstm_cell/add_13:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_20Mullstm_cell/Sigmoid_20:y:0lstm_cell/Tanh_13:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_7/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_7MatMullstm_cell/mul_20:z:0%dense/MatMul_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_7/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_7BiasAdddense/MatMul_7:product:0&dense/BiasAdd_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_14/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_14MatMuldense/BiasAdd_7:output:0*lstm_cell/MatMul_14/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_15/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_15MatMullstm_cell/mul_20:z:0*lstm_cell/MatMul_15/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_14AddV2lstm_cell/MatMul_14:product:0lstm_cell/MatMul_15:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_7/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_7BiasAddlstm_cell/add_14:z:0*lstm_cell/BiasAdd_7/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_7/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_7Split$lstm_cell/split_7/split_dim:output:0lstm_cell/BiasAdd_7:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitn
lstm_cell/Sigmoid_21Sigmoidlstm_cell/split_7:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_22Sigmoidlstm_cell/split_7:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_21Mullstm_cell/Sigmoid_22:y:0lstm_cell/add_13:z:0*
T0*(
_output_shapes
:??????????h
lstm_cell/Tanh_14Tanhlstm_cell/split_7:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_22Mullstm_cell/Sigmoid_21:y:0lstm_cell/Tanh_14:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_15AddV2lstm_cell/mul_21:z:0lstm_cell/mul_22:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_23Sigmoidlstm_cell/split_7:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_15Tanhlstm_cell/add_15:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_23Mullstm_cell/Sigmoid_23:y:0lstm_cell/Tanh_15:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_8/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_8MatMullstm_cell/mul_23:z:0%dense/MatMul_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_8/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_8BiasAdddense/MatMul_8:product:0&dense/BiasAdd_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_16/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_16MatMuldense/BiasAdd_8:output:0*lstm_cell/MatMul_16/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_17/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_17MatMullstm_cell/mul_23:z:0*lstm_cell/MatMul_17/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_16AddV2lstm_cell/MatMul_16:product:0lstm_cell/MatMul_17:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_8/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_8BiasAddlstm_cell/add_16:z:0*lstm_cell/BiasAdd_8/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_8/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_8Split$lstm_cell/split_8/split_dim:output:0lstm_cell/BiasAdd_8:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitn
lstm_cell/Sigmoid_24Sigmoidlstm_cell/split_8:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_25Sigmoidlstm_cell/split_8:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_24Mullstm_cell/Sigmoid_25:y:0lstm_cell/add_15:z:0*
T0*(
_output_shapes
:??????????h
lstm_cell/Tanh_16Tanhlstm_cell/split_8:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_25Mullstm_cell/Sigmoid_24:y:0lstm_cell/Tanh_16:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_17AddV2lstm_cell/mul_24:z:0lstm_cell/mul_25:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_26Sigmoidlstm_cell/split_8:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_17Tanhlstm_cell/add_17:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_26Mullstm_cell/Sigmoid_26:y:0lstm_cell/Tanh_17:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_9/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_9MatMullstm_cell/mul_26:z:0%dense/MatMul_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_9/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_9BiasAdddense/MatMul_9:product:0&dense/BiasAdd_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_18/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_18MatMuldense/BiasAdd_9:output:0*lstm_cell/MatMul_18/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_19/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_19MatMullstm_cell/mul_26:z:0*lstm_cell/MatMul_19/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_18AddV2lstm_cell/MatMul_18:product:0lstm_cell/MatMul_19:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell/BiasAdd_9/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_9BiasAddlstm_cell/add_18:z:0*lstm_cell/BiasAdd_9/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell/split_9/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_9Split$lstm_cell/split_9/split_dim:output:0lstm_cell/BiasAdd_9:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitn
lstm_cell/Sigmoid_27Sigmoidlstm_cell/split_9:output:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_28Sigmoidlstm_cell/split_9:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_27Mullstm_cell/Sigmoid_28:y:0lstm_cell/add_17:z:0*
T0*(
_output_shapes
:??????????h
lstm_cell/Tanh_18Tanhlstm_cell/split_9:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_28Mullstm_cell/Sigmoid_27:y:0lstm_cell/Tanh_18:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_19AddV2lstm_cell/mul_27:z:0lstm_cell/mul_28:z:0*
T0*(
_output_shapes
:??????????n
lstm_cell/Sigmoid_29Sigmoidlstm_cell/split_9:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_19Tanhlstm_cell/add_19:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_29Mullstm_cell/Sigmoid_29:y:0lstm_cell/Tanh_19:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_10/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_10MatMullstm_cell/mul_29:z:0&dense/MatMul_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_10/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_10BiasAdddense/MatMul_10:product:0'dense/BiasAdd_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_20/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_20MatMuldense/BiasAdd_10:output:0*lstm_cell/MatMul_20/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_21/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_21MatMullstm_cell/mul_29:z:0*lstm_cell/MatMul_21/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_20AddV2lstm_cell/MatMul_20:product:0lstm_cell/MatMul_21:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_10/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_10BiasAddlstm_cell/add_20:z:0+lstm_cell/BiasAdd_10/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_10/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_10Split%lstm_cell/split_10/split_dim:output:0lstm_cell/BiasAdd_10:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_30Sigmoidlstm_cell/split_10:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_31Sigmoidlstm_cell/split_10:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_30Mullstm_cell/Sigmoid_31:y:0lstm_cell/add_19:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_20Tanhlstm_cell/split_10:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_31Mullstm_cell/Sigmoid_30:y:0lstm_cell/Tanh_20:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_21AddV2lstm_cell/mul_30:z:0lstm_cell/mul_31:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_32Sigmoidlstm_cell/split_10:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_21Tanhlstm_cell/add_21:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_32Mullstm_cell/Sigmoid_32:y:0lstm_cell/Tanh_21:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_11/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_11MatMullstm_cell/mul_32:z:0&dense/MatMul_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_11/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_11BiasAdddense/MatMul_11:product:0'dense/BiasAdd_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_22/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_22MatMuldense/BiasAdd_11:output:0*lstm_cell/MatMul_22/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_23/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_23MatMullstm_cell/mul_32:z:0*lstm_cell/MatMul_23/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_22AddV2lstm_cell/MatMul_22:product:0lstm_cell/MatMul_23:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_11/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_11BiasAddlstm_cell/add_22:z:0+lstm_cell/BiasAdd_11/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_11/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_11Split%lstm_cell/split_11/split_dim:output:0lstm_cell/BiasAdd_11:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_33Sigmoidlstm_cell/split_11:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_34Sigmoidlstm_cell/split_11:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_33Mullstm_cell/Sigmoid_34:y:0lstm_cell/add_21:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_22Tanhlstm_cell/split_11:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_34Mullstm_cell/Sigmoid_33:y:0lstm_cell/Tanh_22:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_23AddV2lstm_cell/mul_33:z:0lstm_cell/mul_34:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_35Sigmoidlstm_cell/split_11:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_23Tanhlstm_cell/add_23:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_35Mullstm_cell/Sigmoid_35:y:0lstm_cell/Tanh_23:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_12/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_12MatMullstm_cell/mul_35:z:0&dense/MatMul_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_12/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_12BiasAdddense/MatMul_12:product:0'dense/BiasAdd_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_24/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_24MatMuldense/BiasAdd_12:output:0*lstm_cell/MatMul_24/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_25/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_25MatMullstm_cell/mul_35:z:0*lstm_cell/MatMul_25/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_24AddV2lstm_cell/MatMul_24:product:0lstm_cell/MatMul_25:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_12/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_12BiasAddlstm_cell/add_24:z:0+lstm_cell/BiasAdd_12/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_12/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_12Split%lstm_cell/split_12/split_dim:output:0lstm_cell/BiasAdd_12:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_36Sigmoidlstm_cell/split_12:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_37Sigmoidlstm_cell/split_12:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_36Mullstm_cell/Sigmoid_37:y:0lstm_cell/add_23:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_24Tanhlstm_cell/split_12:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_37Mullstm_cell/Sigmoid_36:y:0lstm_cell/Tanh_24:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_25AddV2lstm_cell/mul_36:z:0lstm_cell/mul_37:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_38Sigmoidlstm_cell/split_12:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_25Tanhlstm_cell/add_25:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_38Mullstm_cell/Sigmoid_38:y:0lstm_cell/Tanh_25:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_13/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_13MatMullstm_cell/mul_38:z:0&dense/MatMul_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_13/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_13BiasAdddense/MatMul_13:product:0'dense/BiasAdd_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_26/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_26MatMuldense/BiasAdd_13:output:0*lstm_cell/MatMul_26/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_27/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_27MatMullstm_cell/mul_38:z:0*lstm_cell/MatMul_27/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_26AddV2lstm_cell/MatMul_26:product:0lstm_cell/MatMul_27:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_13/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_13BiasAddlstm_cell/add_26:z:0+lstm_cell/BiasAdd_13/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_13/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_13Split%lstm_cell/split_13/split_dim:output:0lstm_cell/BiasAdd_13:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_39Sigmoidlstm_cell/split_13:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_40Sigmoidlstm_cell/split_13:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_39Mullstm_cell/Sigmoid_40:y:0lstm_cell/add_25:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_26Tanhlstm_cell/split_13:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_40Mullstm_cell/Sigmoid_39:y:0lstm_cell/Tanh_26:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_27AddV2lstm_cell/mul_39:z:0lstm_cell/mul_40:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_41Sigmoidlstm_cell/split_13:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_27Tanhlstm_cell/add_27:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_41Mullstm_cell/Sigmoid_41:y:0lstm_cell/Tanh_27:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_14/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_14MatMullstm_cell/mul_41:z:0&dense/MatMul_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_14/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_14BiasAdddense/MatMul_14:product:0'dense/BiasAdd_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_28/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_28MatMuldense/BiasAdd_14:output:0*lstm_cell/MatMul_28/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_29/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_29MatMullstm_cell/mul_41:z:0*lstm_cell/MatMul_29/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_28AddV2lstm_cell/MatMul_28:product:0lstm_cell/MatMul_29:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_14/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_14BiasAddlstm_cell/add_28:z:0+lstm_cell/BiasAdd_14/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_14/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_14Split%lstm_cell/split_14/split_dim:output:0lstm_cell/BiasAdd_14:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_42Sigmoidlstm_cell/split_14:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_43Sigmoidlstm_cell/split_14:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_42Mullstm_cell/Sigmoid_43:y:0lstm_cell/add_27:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_28Tanhlstm_cell/split_14:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_43Mullstm_cell/Sigmoid_42:y:0lstm_cell/Tanh_28:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_29AddV2lstm_cell/mul_42:z:0lstm_cell/mul_43:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_44Sigmoidlstm_cell/split_14:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_29Tanhlstm_cell/add_29:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_44Mullstm_cell/Sigmoid_44:y:0lstm_cell/Tanh_29:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_15/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_15MatMullstm_cell/mul_44:z:0&dense/MatMul_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_15/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_15BiasAdddense/MatMul_15:product:0'dense/BiasAdd_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_30/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_30MatMuldense/BiasAdd_15:output:0*lstm_cell/MatMul_30/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_31/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_31MatMullstm_cell/mul_44:z:0*lstm_cell/MatMul_31/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_30AddV2lstm_cell/MatMul_30:product:0lstm_cell/MatMul_31:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_15/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_15BiasAddlstm_cell/add_30:z:0+lstm_cell/BiasAdd_15/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_15/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_15Split%lstm_cell/split_15/split_dim:output:0lstm_cell/BiasAdd_15:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_45Sigmoidlstm_cell/split_15:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_46Sigmoidlstm_cell/split_15:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_45Mullstm_cell/Sigmoid_46:y:0lstm_cell/add_29:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_30Tanhlstm_cell/split_15:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_46Mullstm_cell/Sigmoid_45:y:0lstm_cell/Tanh_30:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_31AddV2lstm_cell/mul_45:z:0lstm_cell/mul_46:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_47Sigmoidlstm_cell/split_15:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_31Tanhlstm_cell/add_31:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_47Mullstm_cell/Sigmoid_47:y:0lstm_cell/Tanh_31:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_16/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_16MatMullstm_cell/mul_47:z:0&dense/MatMul_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_16/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_16BiasAdddense/MatMul_16:product:0'dense/BiasAdd_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_32/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_32MatMuldense/BiasAdd_16:output:0*lstm_cell/MatMul_32/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_33/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_33MatMullstm_cell/mul_47:z:0*lstm_cell/MatMul_33/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_32AddV2lstm_cell/MatMul_32:product:0lstm_cell/MatMul_33:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_16/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_16BiasAddlstm_cell/add_32:z:0+lstm_cell/BiasAdd_16/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_16/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_16Split%lstm_cell/split_16/split_dim:output:0lstm_cell/BiasAdd_16:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_48Sigmoidlstm_cell/split_16:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_49Sigmoidlstm_cell/split_16:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_48Mullstm_cell/Sigmoid_49:y:0lstm_cell/add_31:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_32Tanhlstm_cell/split_16:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_49Mullstm_cell/Sigmoid_48:y:0lstm_cell/Tanh_32:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_33AddV2lstm_cell/mul_48:z:0lstm_cell/mul_49:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_50Sigmoidlstm_cell/split_16:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_33Tanhlstm_cell/add_33:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_50Mullstm_cell/Sigmoid_50:y:0lstm_cell/Tanh_33:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_17/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_17MatMullstm_cell/mul_50:z:0&dense/MatMul_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_17/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_17BiasAdddense/MatMul_17:product:0'dense/BiasAdd_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_34/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_34MatMuldense/BiasAdd_17:output:0*lstm_cell/MatMul_34/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_35/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_35MatMullstm_cell/mul_50:z:0*lstm_cell/MatMul_35/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_34AddV2lstm_cell/MatMul_34:product:0lstm_cell/MatMul_35:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_17/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_17BiasAddlstm_cell/add_34:z:0+lstm_cell/BiasAdd_17/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_17/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_17Split%lstm_cell/split_17/split_dim:output:0lstm_cell/BiasAdd_17:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_51Sigmoidlstm_cell/split_17:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_52Sigmoidlstm_cell/split_17:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_51Mullstm_cell/Sigmoid_52:y:0lstm_cell/add_33:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_34Tanhlstm_cell/split_17:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_52Mullstm_cell/Sigmoid_51:y:0lstm_cell/Tanh_34:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_35AddV2lstm_cell/mul_51:z:0lstm_cell/mul_52:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_53Sigmoidlstm_cell/split_17:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_35Tanhlstm_cell/add_35:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_53Mullstm_cell/Sigmoid_53:y:0lstm_cell/Tanh_35:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_18/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_18MatMullstm_cell/mul_53:z:0&dense/MatMul_18/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_18/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_18BiasAdddense/MatMul_18:product:0'dense/BiasAdd_18/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_36/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_36MatMuldense/BiasAdd_18:output:0*lstm_cell/MatMul_36/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_37/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_37MatMullstm_cell/mul_53:z:0*lstm_cell/MatMul_37/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_36AddV2lstm_cell/MatMul_36:product:0lstm_cell/MatMul_37:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_18/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_18BiasAddlstm_cell/add_36:z:0+lstm_cell/BiasAdd_18/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_18/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_18Split%lstm_cell/split_18/split_dim:output:0lstm_cell/BiasAdd_18:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_54Sigmoidlstm_cell/split_18:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_55Sigmoidlstm_cell/split_18:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_54Mullstm_cell/Sigmoid_55:y:0lstm_cell/add_35:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_36Tanhlstm_cell/split_18:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_55Mullstm_cell/Sigmoid_54:y:0lstm_cell/Tanh_36:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_37AddV2lstm_cell/mul_54:z:0lstm_cell/mul_55:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_56Sigmoidlstm_cell/split_18:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_37Tanhlstm_cell/add_37:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_56Mullstm_cell/Sigmoid_56:y:0lstm_cell/Tanh_37:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_19/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_19MatMullstm_cell/mul_56:z:0&dense/MatMul_19/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_19/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_19BiasAdddense/MatMul_19:product:0'dense/BiasAdd_19/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_38/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_38MatMuldense/BiasAdd_19:output:0*lstm_cell/MatMul_38/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_39/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_39MatMullstm_cell/mul_56:z:0*lstm_cell/MatMul_39/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_38AddV2lstm_cell/MatMul_38:product:0lstm_cell/MatMul_39:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_19/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_19BiasAddlstm_cell/add_38:z:0+lstm_cell/BiasAdd_19/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_19/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_19Split%lstm_cell/split_19/split_dim:output:0lstm_cell/BiasAdd_19:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_57Sigmoidlstm_cell/split_19:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_58Sigmoidlstm_cell/split_19:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_57Mullstm_cell/Sigmoid_58:y:0lstm_cell/add_37:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_38Tanhlstm_cell/split_19:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_58Mullstm_cell/Sigmoid_57:y:0lstm_cell/Tanh_38:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_39AddV2lstm_cell/mul_57:z:0lstm_cell/mul_58:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_59Sigmoidlstm_cell/split_19:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_39Tanhlstm_cell/add_39:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_59Mullstm_cell/Sigmoid_59:y:0lstm_cell/Tanh_39:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_20/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_20MatMullstm_cell/mul_59:z:0&dense/MatMul_20/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_20/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_20BiasAdddense/MatMul_20:product:0'dense/BiasAdd_20/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_40/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_40MatMuldense/BiasAdd_20:output:0*lstm_cell/MatMul_40/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_41/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_41MatMullstm_cell/mul_59:z:0*lstm_cell/MatMul_41/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_40AddV2lstm_cell/MatMul_40:product:0lstm_cell/MatMul_41:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_20/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_20BiasAddlstm_cell/add_40:z:0+lstm_cell/BiasAdd_20/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_20/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_20Split%lstm_cell/split_20/split_dim:output:0lstm_cell/BiasAdd_20:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_60Sigmoidlstm_cell/split_20:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_61Sigmoidlstm_cell/split_20:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_60Mullstm_cell/Sigmoid_61:y:0lstm_cell/add_39:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_40Tanhlstm_cell/split_20:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_61Mullstm_cell/Sigmoid_60:y:0lstm_cell/Tanh_40:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_41AddV2lstm_cell/mul_60:z:0lstm_cell/mul_61:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_62Sigmoidlstm_cell/split_20:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_41Tanhlstm_cell/add_41:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_62Mullstm_cell/Sigmoid_62:y:0lstm_cell/Tanh_41:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_21/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_21MatMullstm_cell/mul_62:z:0&dense/MatMul_21/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_21/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_21BiasAdddense/MatMul_21:product:0'dense/BiasAdd_21/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_42/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_42MatMuldense/BiasAdd_21:output:0*lstm_cell/MatMul_42/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_43/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_43MatMullstm_cell/mul_62:z:0*lstm_cell/MatMul_43/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_42AddV2lstm_cell/MatMul_42:product:0lstm_cell/MatMul_43:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_21/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_21BiasAddlstm_cell/add_42:z:0+lstm_cell/BiasAdd_21/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_21/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_21Split%lstm_cell/split_21/split_dim:output:0lstm_cell/BiasAdd_21:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_63Sigmoidlstm_cell/split_21:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_64Sigmoidlstm_cell/split_21:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_63Mullstm_cell/Sigmoid_64:y:0lstm_cell/add_41:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_42Tanhlstm_cell/split_21:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_64Mullstm_cell/Sigmoid_63:y:0lstm_cell/Tanh_42:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_43AddV2lstm_cell/mul_63:z:0lstm_cell/mul_64:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_65Sigmoidlstm_cell/split_21:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_43Tanhlstm_cell/add_43:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_65Mullstm_cell/Sigmoid_65:y:0lstm_cell/Tanh_43:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_22/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_22MatMullstm_cell/mul_65:z:0&dense/MatMul_22/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_22/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_22BiasAdddense/MatMul_22:product:0'dense/BiasAdd_22/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"lstm_cell/MatMul_44/ReadVariableOpReadVariableOp,rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMul_44MatMuldense/BiasAdd_22:output:0*lstm_cell/MatMul_44/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
"lstm_cell/MatMul_45/ReadVariableOpReadVariableOp.rnn_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_45MatMullstm_cell/mul_65:z:0*lstm_cell/MatMul_45/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/add_44AddV2lstm_cell/MatMul_44:product:0lstm_cell/MatMul_45:product:0*
T0*(
_output_shapes
:???????????
#lstm_cell/BiasAdd_22/ReadVariableOpReadVariableOp-rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAdd_22BiasAddlstm_cell/add_44:z:0+lstm_cell/BiasAdd_22/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????^
lstm_cell/split_22/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/split_22Split%lstm_cell/split_22/split_dim:output:0lstm_cell/BiasAdd_22:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splito
lstm_cell/Sigmoid_66Sigmoidlstm_cell/split_22:output:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_67Sigmoidlstm_cell/split_22:output:1*
T0*(
_output_shapes
:??????????z
lstm_cell/mul_66Mullstm_cell/Sigmoid_67:y:0lstm_cell/add_43:z:0*
T0*(
_output_shapes
:??????????i
lstm_cell/Tanh_44Tanhlstm_cell/split_22:output:2*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_67Mullstm_cell/Sigmoid_66:y:0lstm_cell/Tanh_44:y:0*
T0*(
_output_shapes
:??????????x
lstm_cell/add_45AddV2lstm_cell/mul_66:z:0lstm_cell/mul_67:z:0*
T0*(
_output_shapes
:??????????o
lstm_cell/Sigmoid_68Sigmoidlstm_cell/split_22:output:3*
T0*(
_output_shapes
:??????????b
lstm_cell/Tanh_45Tanhlstm_cell/add_45:z:0*
T0*(
_output_shapes
:??????????{
lstm_cell/mul_68Mullstm_cell/Sigmoid_68:y:0lstm_cell/Tanh_45:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul_23/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMul_23MatMullstm_cell/mul_68:z:0&dense/MatMul_23/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense/BiasAdd_23/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAdd_23BiasAdddense/MatMul_23:product:0'dense/BiasAdd_23/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
stackPackdense/BiasAdd:output:0dense/BiasAdd_1:output:0dense/BiasAdd_2:output:0dense/BiasAdd_3:output:0dense/BiasAdd_4:output:0dense/BiasAdd_5:output:0dense/BiasAdd_6:output:0dense/BiasAdd_7:output:0dense/BiasAdd_8:output:0dense/BiasAdd_9:output:0dense/BiasAdd_10:output:0dense/BiasAdd_11:output:0dense/BiasAdd_12:output:0dense/BiasAdd_13:output:0dense/BiasAdd_14:output:0dense/BiasAdd_15:output:0dense/BiasAdd_16:output:0dense/BiasAdd_17:output:0dense/BiasAdd_18:output:0dense/BiasAdd_19:output:0dense/BiasAdd_20:output:0dense/BiasAdd_21:output:0dense/BiasAdd_22:output:0dense/BiasAdd_23:output:0*
N*
T0*+
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:?????????`
IdentityIdentitytranspose:y:0^NoOp*
T0*+
_output_shapes
:??????????!
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/BiasAdd_1/ReadVariableOp ^dense/BiasAdd_10/ReadVariableOp ^dense/BiasAdd_11/ReadVariableOp ^dense/BiasAdd_12/ReadVariableOp ^dense/BiasAdd_13/ReadVariableOp ^dense/BiasAdd_14/ReadVariableOp ^dense/BiasAdd_15/ReadVariableOp ^dense/BiasAdd_16/ReadVariableOp ^dense/BiasAdd_17/ReadVariableOp ^dense/BiasAdd_18/ReadVariableOp ^dense/BiasAdd_19/ReadVariableOp^dense/BiasAdd_2/ReadVariableOp ^dense/BiasAdd_20/ReadVariableOp ^dense/BiasAdd_21/ReadVariableOp ^dense/BiasAdd_22/ReadVariableOp ^dense/BiasAdd_23/ReadVariableOp^dense/BiasAdd_3/ReadVariableOp^dense/BiasAdd_4/ReadVariableOp^dense/BiasAdd_5/ReadVariableOp^dense/BiasAdd_6/ReadVariableOp^dense/BiasAdd_7/ReadVariableOp^dense/BiasAdd_8/ReadVariableOp^dense/BiasAdd_9/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/MatMul_1/ReadVariableOp^dense/MatMul_10/ReadVariableOp^dense/MatMul_11/ReadVariableOp^dense/MatMul_12/ReadVariableOp^dense/MatMul_13/ReadVariableOp^dense/MatMul_14/ReadVariableOp^dense/MatMul_15/ReadVariableOp^dense/MatMul_16/ReadVariableOp^dense/MatMul_17/ReadVariableOp^dense/MatMul_18/ReadVariableOp^dense/MatMul_19/ReadVariableOp^dense/MatMul_2/ReadVariableOp^dense/MatMul_20/ReadVariableOp^dense/MatMul_21/ReadVariableOp^dense/MatMul_22/ReadVariableOp^dense/MatMul_23/ReadVariableOp^dense/MatMul_3/ReadVariableOp^dense/MatMul_4/ReadVariableOp^dense/MatMul_5/ReadVariableOp^dense/MatMul_6/ReadVariableOp^dense/MatMul_7/ReadVariableOp^dense/MatMul_8/ReadVariableOp^dense/MatMul_9/ReadVariableOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp$^lstm_cell/BiasAdd_10/ReadVariableOp$^lstm_cell/BiasAdd_11/ReadVariableOp$^lstm_cell/BiasAdd_12/ReadVariableOp$^lstm_cell/BiasAdd_13/ReadVariableOp$^lstm_cell/BiasAdd_14/ReadVariableOp$^lstm_cell/BiasAdd_15/ReadVariableOp$^lstm_cell/BiasAdd_16/ReadVariableOp$^lstm_cell/BiasAdd_17/ReadVariableOp$^lstm_cell/BiasAdd_18/ReadVariableOp$^lstm_cell/BiasAdd_19/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp$^lstm_cell/BiasAdd_20/ReadVariableOp$^lstm_cell/BiasAdd_21/ReadVariableOp$^lstm_cell/BiasAdd_22/ReadVariableOp#^lstm_cell/BiasAdd_3/ReadVariableOp#^lstm_cell/BiasAdd_4/ReadVariableOp#^lstm_cell/BiasAdd_5/ReadVariableOp#^lstm_cell/BiasAdd_6/ReadVariableOp#^lstm_cell/BiasAdd_7/ReadVariableOp#^lstm_cell/BiasAdd_8/ReadVariableOp#^lstm_cell/BiasAdd_9/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp#^lstm_cell/MatMul_10/ReadVariableOp#^lstm_cell/MatMul_11/ReadVariableOp#^lstm_cell/MatMul_12/ReadVariableOp#^lstm_cell/MatMul_13/ReadVariableOp#^lstm_cell/MatMul_14/ReadVariableOp#^lstm_cell/MatMul_15/ReadVariableOp#^lstm_cell/MatMul_16/ReadVariableOp#^lstm_cell/MatMul_17/ReadVariableOp#^lstm_cell/MatMul_18/ReadVariableOp#^lstm_cell/MatMul_19/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp#^lstm_cell/MatMul_20/ReadVariableOp#^lstm_cell/MatMul_21/ReadVariableOp#^lstm_cell/MatMul_22/ReadVariableOp#^lstm_cell/MatMul_23/ReadVariableOp#^lstm_cell/MatMul_24/ReadVariableOp#^lstm_cell/MatMul_25/ReadVariableOp#^lstm_cell/MatMul_26/ReadVariableOp#^lstm_cell/MatMul_27/ReadVariableOp#^lstm_cell/MatMul_28/ReadVariableOp#^lstm_cell/MatMul_29/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp#^lstm_cell/MatMul_30/ReadVariableOp#^lstm_cell/MatMul_31/ReadVariableOp#^lstm_cell/MatMul_32/ReadVariableOp#^lstm_cell/MatMul_33/ReadVariableOp#^lstm_cell/MatMul_34/ReadVariableOp#^lstm_cell/MatMul_35/ReadVariableOp#^lstm_cell/MatMul_36/ReadVariableOp#^lstm_cell/MatMul_37/ReadVariableOp#^lstm_cell/MatMul_38/ReadVariableOp#^lstm_cell/MatMul_39/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp#^lstm_cell/MatMul_40/ReadVariableOp#^lstm_cell/MatMul_41/ReadVariableOp#^lstm_cell/MatMul_42/ReadVariableOp#^lstm_cell/MatMul_43/ReadVariableOp#^lstm_cell/MatMul_44/ReadVariableOp#^lstm_cell/MatMul_45/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp"^lstm_cell/MatMul_6/ReadVariableOp"^lstm_cell/MatMul_7/ReadVariableOp"^lstm_cell/MatMul_8/ReadVariableOp"^lstm_cell/MatMul_9/ReadVariableOp%^rnn/lstm_cell/BiasAdd/ReadVariableOp$^rnn/lstm_cell/MatMul/ReadVariableOp&^rnn/lstm_cell/MatMul_1/ReadVariableOp
^rnn/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????0: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/BiasAdd_1/ReadVariableOpdense/BiasAdd_1/ReadVariableOp2B
dense/BiasAdd_10/ReadVariableOpdense/BiasAdd_10/ReadVariableOp2B
dense/BiasAdd_11/ReadVariableOpdense/BiasAdd_11/ReadVariableOp2B
dense/BiasAdd_12/ReadVariableOpdense/BiasAdd_12/ReadVariableOp2B
dense/BiasAdd_13/ReadVariableOpdense/BiasAdd_13/ReadVariableOp2B
dense/BiasAdd_14/ReadVariableOpdense/BiasAdd_14/ReadVariableOp2B
dense/BiasAdd_15/ReadVariableOpdense/BiasAdd_15/ReadVariableOp2B
dense/BiasAdd_16/ReadVariableOpdense/BiasAdd_16/ReadVariableOp2B
dense/BiasAdd_17/ReadVariableOpdense/BiasAdd_17/ReadVariableOp2B
dense/BiasAdd_18/ReadVariableOpdense/BiasAdd_18/ReadVariableOp2B
dense/BiasAdd_19/ReadVariableOpdense/BiasAdd_19/ReadVariableOp2@
dense/BiasAdd_2/ReadVariableOpdense/BiasAdd_2/ReadVariableOp2B
dense/BiasAdd_20/ReadVariableOpdense/BiasAdd_20/ReadVariableOp2B
dense/BiasAdd_21/ReadVariableOpdense/BiasAdd_21/ReadVariableOp2B
dense/BiasAdd_22/ReadVariableOpdense/BiasAdd_22/ReadVariableOp2B
dense/BiasAdd_23/ReadVariableOpdense/BiasAdd_23/ReadVariableOp2@
dense/BiasAdd_3/ReadVariableOpdense/BiasAdd_3/ReadVariableOp2@
dense/BiasAdd_4/ReadVariableOpdense/BiasAdd_4/ReadVariableOp2@
dense/BiasAdd_5/ReadVariableOpdense/BiasAdd_5/ReadVariableOp2@
dense/BiasAdd_6/ReadVariableOpdense/BiasAdd_6/ReadVariableOp2@
dense/BiasAdd_7/ReadVariableOpdense/BiasAdd_7/ReadVariableOp2@
dense/BiasAdd_8/ReadVariableOpdense/BiasAdd_8/ReadVariableOp2@
dense/BiasAdd_9/ReadVariableOpdense/BiasAdd_9/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2>
dense/MatMul_1/ReadVariableOpdense/MatMul_1/ReadVariableOp2@
dense/MatMul_10/ReadVariableOpdense/MatMul_10/ReadVariableOp2@
dense/MatMul_11/ReadVariableOpdense/MatMul_11/ReadVariableOp2@
dense/MatMul_12/ReadVariableOpdense/MatMul_12/ReadVariableOp2@
dense/MatMul_13/ReadVariableOpdense/MatMul_13/ReadVariableOp2@
dense/MatMul_14/ReadVariableOpdense/MatMul_14/ReadVariableOp2@
dense/MatMul_15/ReadVariableOpdense/MatMul_15/ReadVariableOp2@
dense/MatMul_16/ReadVariableOpdense/MatMul_16/ReadVariableOp2@
dense/MatMul_17/ReadVariableOpdense/MatMul_17/ReadVariableOp2@
dense/MatMul_18/ReadVariableOpdense/MatMul_18/ReadVariableOp2@
dense/MatMul_19/ReadVariableOpdense/MatMul_19/ReadVariableOp2>
dense/MatMul_2/ReadVariableOpdense/MatMul_2/ReadVariableOp2@
dense/MatMul_20/ReadVariableOpdense/MatMul_20/ReadVariableOp2@
dense/MatMul_21/ReadVariableOpdense/MatMul_21/ReadVariableOp2@
dense/MatMul_22/ReadVariableOpdense/MatMul_22/ReadVariableOp2@
dense/MatMul_23/ReadVariableOpdense/MatMul_23/ReadVariableOp2>
dense/MatMul_3/ReadVariableOpdense/MatMul_3/ReadVariableOp2>
dense/MatMul_4/ReadVariableOpdense/MatMul_4/ReadVariableOp2>
dense/MatMul_5/ReadVariableOpdense/MatMul_5/ReadVariableOp2>
dense/MatMul_6/ReadVariableOpdense/MatMul_6/ReadVariableOp2>
dense/MatMul_7/ReadVariableOpdense/MatMul_7/ReadVariableOp2>
dense/MatMul_8/ReadVariableOpdense/MatMul_8/ReadVariableOp2>
dense/MatMul_9/ReadVariableOpdense/MatMul_9/ReadVariableOp2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2H
"lstm_cell/BiasAdd_1/ReadVariableOp"lstm_cell/BiasAdd_1/ReadVariableOp2J
#lstm_cell/BiasAdd_10/ReadVariableOp#lstm_cell/BiasAdd_10/ReadVariableOp2J
#lstm_cell/BiasAdd_11/ReadVariableOp#lstm_cell/BiasAdd_11/ReadVariableOp2J
#lstm_cell/BiasAdd_12/ReadVariableOp#lstm_cell/BiasAdd_12/ReadVariableOp2J
#lstm_cell/BiasAdd_13/ReadVariableOp#lstm_cell/BiasAdd_13/ReadVariableOp2J
#lstm_cell/BiasAdd_14/ReadVariableOp#lstm_cell/BiasAdd_14/ReadVariableOp2J
#lstm_cell/BiasAdd_15/ReadVariableOp#lstm_cell/BiasAdd_15/ReadVariableOp2J
#lstm_cell/BiasAdd_16/ReadVariableOp#lstm_cell/BiasAdd_16/ReadVariableOp2J
#lstm_cell/BiasAdd_17/ReadVariableOp#lstm_cell/BiasAdd_17/ReadVariableOp2J
#lstm_cell/BiasAdd_18/ReadVariableOp#lstm_cell/BiasAdd_18/ReadVariableOp2J
#lstm_cell/BiasAdd_19/ReadVariableOp#lstm_cell/BiasAdd_19/ReadVariableOp2H
"lstm_cell/BiasAdd_2/ReadVariableOp"lstm_cell/BiasAdd_2/ReadVariableOp2J
#lstm_cell/BiasAdd_20/ReadVariableOp#lstm_cell/BiasAdd_20/ReadVariableOp2J
#lstm_cell/BiasAdd_21/ReadVariableOp#lstm_cell/BiasAdd_21/ReadVariableOp2J
#lstm_cell/BiasAdd_22/ReadVariableOp#lstm_cell/BiasAdd_22/ReadVariableOp2H
"lstm_cell/BiasAdd_3/ReadVariableOp"lstm_cell/BiasAdd_3/ReadVariableOp2H
"lstm_cell/BiasAdd_4/ReadVariableOp"lstm_cell/BiasAdd_4/ReadVariableOp2H
"lstm_cell/BiasAdd_5/ReadVariableOp"lstm_cell/BiasAdd_5/ReadVariableOp2H
"lstm_cell/BiasAdd_6/ReadVariableOp"lstm_cell/BiasAdd_6/ReadVariableOp2H
"lstm_cell/BiasAdd_7/ReadVariableOp"lstm_cell/BiasAdd_7/ReadVariableOp2H
"lstm_cell/BiasAdd_8/ReadVariableOp"lstm_cell/BiasAdd_8/ReadVariableOp2H
"lstm_cell/BiasAdd_9/ReadVariableOp"lstm_cell/BiasAdd_9/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2H
"lstm_cell/MatMul_10/ReadVariableOp"lstm_cell/MatMul_10/ReadVariableOp2H
"lstm_cell/MatMul_11/ReadVariableOp"lstm_cell/MatMul_11/ReadVariableOp2H
"lstm_cell/MatMul_12/ReadVariableOp"lstm_cell/MatMul_12/ReadVariableOp2H
"lstm_cell/MatMul_13/ReadVariableOp"lstm_cell/MatMul_13/ReadVariableOp2H
"lstm_cell/MatMul_14/ReadVariableOp"lstm_cell/MatMul_14/ReadVariableOp2H
"lstm_cell/MatMul_15/ReadVariableOp"lstm_cell/MatMul_15/ReadVariableOp2H
"lstm_cell/MatMul_16/ReadVariableOp"lstm_cell/MatMul_16/ReadVariableOp2H
"lstm_cell/MatMul_17/ReadVariableOp"lstm_cell/MatMul_17/ReadVariableOp2H
"lstm_cell/MatMul_18/ReadVariableOp"lstm_cell/MatMul_18/ReadVariableOp2H
"lstm_cell/MatMul_19/ReadVariableOp"lstm_cell/MatMul_19/ReadVariableOp2F
!lstm_cell/MatMul_2/ReadVariableOp!lstm_cell/MatMul_2/ReadVariableOp2H
"lstm_cell/MatMul_20/ReadVariableOp"lstm_cell/MatMul_20/ReadVariableOp2H
"lstm_cell/MatMul_21/ReadVariableOp"lstm_cell/MatMul_21/ReadVariableOp2H
"lstm_cell/MatMul_22/ReadVariableOp"lstm_cell/MatMul_22/ReadVariableOp2H
"lstm_cell/MatMul_23/ReadVariableOp"lstm_cell/MatMul_23/ReadVariableOp2H
"lstm_cell/MatMul_24/ReadVariableOp"lstm_cell/MatMul_24/ReadVariableOp2H
"lstm_cell/MatMul_25/ReadVariableOp"lstm_cell/MatMul_25/ReadVariableOp2H
"lstm_cell/MatMul_26/ReadVariableOp"lstm_cell/MatMul_26/ReadVariableOp2H
"lstm_cell/MatMul_27/ReadVariableOp"lstm_cell/MatMul_27/ReadVariableOp2H
"lstm_cell/MatMul_28/ReadVariableOp"lstm_cell/MatMul_28/ReadVariableOp2H
"lstm_cell/MatMul_29/ReadVariableOp"lstm_cell/MatMul_29/ReadVariableOp2F
!lstm_cell/MatMul_3/ReadVariableOp!lstm_cell/MatMul_3/ReadVariableOp2H
"lstm_cell/MatMul_30/ReadVariableOp"lstm_cell/MatMul_30/ReadVariableOp2H
"lstm_cell/MatMul_31/ReadVariableOp"lstm_cell/MatMul_31/ReadVariableOp2H
"lstm_cell/MatMul_32/ReadVariableOp"lstm_cell/MatMul_32/ReadVariableOp2H
"lstm_cell/MatMul_33/ReadVariableOp"lstm_cell/MatMul_33/ReadVariableOp2H
"lstm_cell/MatMul_34/ReadVariableOp"lstm_cell/MatMul_34/ReadVariableOp2H
"lstm_cell/MatMul_35/ReadVariableOp"lstm_cell/MatMul_35/ReadVariableOp2H
"lstm_cell/MatMul_36/ReadVariableOp"lstm_cell/MatMul_36/ReadVariableOp2H
"lstm_cell/MatMul_37/ReadVariableOp"lstm_cell/MatMul_37/ReadVariableOp2H
"lstm_cell/MatMul_38/ReadVariableOp"lstm_cell/MatMul_38/ReadVariableOp2H
"lstm_cell/MatMul_39/ReadVariableOp"lstm_cell/MatMul_39/ReadVariableOp2F
!lstm_cell/MatMul_4/ReadVariableOp!lstm_cell/MatMul_4/ReadVariableOp2H
"lstm_cell/MatMul_40/ReadVariableOp"lstm_cell/MatMul_40/ReadVariableOp2H
"lstm_cell/MatMul_41/ReadVariableOp"lstm_cell/MatMul_41/ReadVariableOp2H
"lstm_cell/MatMul_42/ReadVariableOp"lstm_cell/MatMul_42/ReadVariableOp2H
"lstm_cell/MatMul_43/ReadVariableOp"lstm_cell/MatMul_43/ReadVariableOp2H
"lstm_cell/MatMul_44/ReadVariableOp"lstm_cell/MatMul_44/ReadVariableOp2H
"lstm_cell/MatMul_45/ReadVariableOp"lstm_cell/MatMul_45/ReadVariableOp2F
!lstm_cell/MatMul_5/ReadVariableOp!lstm_cell/MatMul_5/ReadVariableOp2F
!lstm_cell/MatMul_6/ReadVariableOp!lstm_cell/MatMul_6/ReadVariableOp2F
!lstm_cell/MatMul_7/ReadVariableOp!lstm_cell/MatMul_7/ReadVariableOp2F
!lstm_cell/MatMul_8/ReadVariableOp!lstm_cell/MatMul_8/ReadVariableOp2F
!lstm_cell/MatMul_9/ReadVariableOp!lstm_cell/MatMul_9/ReadVariableOp2L
$rnn/lstm_cell/BiasAdd/ReadVariableOp$rnn/lstm_cell/BiasAdd/ReadVariableOp2J
#rnn/lstm_cell/MatMul/ReadVariableOp#rnn/lstm_cell/MatMul/ReadVariableOp2N
%rnn/lstm_cell/MatMul_1/ReadVariableOp%rnn/lstm_cell/MatMul_1/ReadVariableOp2
	rnn/while	rnn/while:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?;
?	
rnn_while_body_28483$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0G
4rnn_while_lstm_cell_matmul_readvariableop_resource_0:	?J
6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:
??D
5rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	?
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4
rnn_while_identity_5!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorE
2rnn_while_lstm_cell_matmul_readvariableop_resource:	?H
4rnn_while_lstm_cell_matmul_1_readvariableop_resource:
??B
3rnn_while_lstm_cell_biasadd_readvariableop_resource:	???*rnn/while/lstm_cell/BiasAdd/ReadVariableOp?)rnn/while/lstm_cell/MatMul/ReadVariableOp?+rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp4rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
rnn/while/lstm_cell/MatMulMatMul4rnn/while/TensorArrayV2Read/TensorListGetItem:item:01rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
rnn/while/lstm_cell/MatMul_1MatMulrnn_while_placeholder_23rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
rnn/while/lstm_cell/addAddV2$rnn/while/lstm_cell/MatMul:product:0&rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp5rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
rnn/while/lstm_cell/BiasAddBiasAddrnn/while/lstm_cell/add:z:02rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
rnn/while/lstm_cell/splitSplit,rnn/while/lstm_cell/split/split_dim:output:0$rnn/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split}
rnn/while/lstm_cell/SigmoidSigmoid"rnn/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????
rnn/while/lstm_cell/Sigmoid_1Sigmoid"rnn/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:???????????
rnn/while/lstm_cell/mulMul!rnn/while/lstm_cell/Sigmoid_1:y:0rnn_while_placeholder_3*
T0*(
_output_shapes
:??????????w
rnn/while/lstm_cell/TanhTanh"rnn/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:???????????
rnn/while/lstm_cell/mul_1Mulrnn/while/lstm_cell/Sigmoid:y:0rnn/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:???????????
rnn/while/lstm_cell/add_1AddV2rnn/while/lstm_cell/mul:z:0rnn/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????
rnn/while/lstm_cell/Sigmoid_2Sigmoid"rnn/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????t
rnn/while/lstm_cell/Tanh_1Tanhrnn/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:???????????
rnn/while/lstm_cell/mul_2Mul!rnn/while/lstm_cell/Sigmoid_2:y:0rnn/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:???????????
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholderrnn/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???Q
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: S
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: e
rnn/while/IdentityIdentityrnn/while/add_1:z:0^rnn/while/NoOp*
T0*
_output_shapes
: z
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations^rnn/while/NoOp*
T0*
_output_shapes
: e
rnn/while/Identity_2Identityrnn/while/add:z:0^rnn/while/NoOp*
T0*
_output_shapes
: ?
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn/while/NoOp*
T0*
_output_shapes
: ?
rnn/while/Identity_4Identityrnn/while/lstm_cell/mul_2:z:0^rnn/while/NoOp*
T0*(
_output_shapes
:???????????
rnn/while/Identity_5Identityrnn/while/lstm_cell/add_1:z:0^rnn/while/NoOp*
T0*(
_output_shapes
:???????????
rnn/while/NoOpNoOp+^rnn/while/lstm_cell/BiasAdd/ReadVariableOp*^rnn/while/lstm_cell/MatMul/ReadVariableOp,^rnn/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "1
rnn_while_identityrnn/while/Identity:output:0"5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"5
rnn_while_identity_5rnn/while/Identity_5:output:0"l
3rnn_while_lstm_cell_biasadd_readvariableop_resource5rnn_while_lstm_cell_biasadd_readvariableop_resource_0"n
4rnn_while_lstm_cell_matmul_1_readvariableop_resource6rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"j
2rnn_while_lstm_cell_matmul_readvariableop_resource4rnn_while_lstm_cell_matmul_readvariableop_resource_0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"?
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*rnn/while/lstm_cell/BiasAdd/ReadVariableOp*rnn/while/lstm_cell/BiasAdd/ReadVariableOp2V
)rnn/while/lstm_cell/MatMul/ReadVariableOp)rnn/while/lstm_cell/MatMul/ReadVariableOp2Z
+rnn/while/lstm_cell/MatMul_1/ReadVariableOp+rnn/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_27069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_27069___redundant_placeholder03
/while_while_cond_27069___redundant_placeholder13
/while_while_cond_27069___redundant_placeholder23
/while_while_cond_27069___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_29976

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?J
?
>__inference_rnn_layer_call_and_return_conditional_losses_30564

inputs;
(lstm_cell_matmul_readvariableop_resource:	?>
*lstm_cell_matmul_1_readvariableop_resource:
??8
)lstm_cell_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:??????????k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:??????????r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????c
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*(
_output_shapes
:??????????t
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:??????????s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:??????????`
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*(
_output_shapes
:??????????x
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_30479*
condR
while_cond_30478*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0??????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????0?h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:??????????`

Identity_2Identitywhile:output:5^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????0: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_27160

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
rnn_while_cond_28482$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3&
"rnn_while_less_rnn_strided_slice_1;
7rnn_while_rnn_while_cond_28482___redundant_placeholder0;
7rnn_while_rnn_while_cond_28482___redundant_placeholder1;
7rnn_while_rnn_while_cond_28482___redundant_placeholder2;
7rnn_while_rnn_while_cond_28482___redundant_placeholder3
rnn_while_identity
r
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: S
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: "1
rnn_while_identityrnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?	
?
rnn_while_cond_29208$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2
rnn_while_placeholder_3&
"rnn_while_less_rnn_strided_slice_1;
7rnn_while_rnn_while_cond_29208___redundant_placeholder0;
7rnn_while_rnn_while_cond_29208___redundant_placeholder1;
7rnn_while_rnn_while_cond_29208___redundant_placeholder2;
7rnn_while_rnn_while_cond_29208___redundant_placeholder3
rnn_while_identity
r
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: S
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: "1
rnn_while_identityrnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_30334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_30334___redundant_placeholder03
/while_while_cond_30334___redundant_placeholder13
/while_while_cond_30334___redundant_placeholder23
/while_while_cond_30334___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_30622
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_30622___redundant_placeholder03
/while_while_cond_30622___redundant_placeholder13
/while_while_cond_30622___redundant_placeholder23
/while_while_cond_30622___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
??
?
D__inference_feed_back_layer_call_and_return_conditional_losses_28143
input_1
	rnn_27918:	?
	rnn_27920:
??
	rnn_27922:	?
dense_27927:	?
dense_27929:
identity??dense/StatefulPartitionedCall?dense/StatefulPartitionedCall_1? dense/StatefulPartitionedCall_10? dense/StatefulPartitionedCall_11? dense/StatefulPartitionedCall_12? dense/StatefulPartitionedCall_13? dense/StatefulPartitionedCall_14? dense/StatefulPartitionedCall_15? dense/StatefulPartitionedCall_16? dense/StatefulPartitionedCall_17? dense/StatefulPartitionedCall_18? dense/StatefulPartitionedCall_19?dense/StatefulPartitionedCall_2? dense/StatefulPartitionedCall_20? dense/StatefulPartitionedCall_21? dense/StatefulPartitionedCall_22? dense/StatefulPartitionedCall_23?dense/StatefulPartitionedCall_3?dense/StatefulPartitionedCall_4?dense/StatefulPartitionedCall_5?dense/StatefulPartitionedCall_6?dense/StatefulPartitionedCall_7?dense/StatefulPartitionedCall_8?dense/StatefulPartitionedCall_9?!lstm_cell/StatefulPartitionedCall?#lstm_cell/StatefulPartitionedCall_1?$lstm_cell/StatefulPartitionedCall_10?$lstm_cell/StatefulPartitionedCall_11?$lstm_cell/StatefulPartitionedCall_12?$lstm_cell/StatefulPartitionedCall_13?$lstm_cell/StatefulPartitionedCall_14?$lstm_cell/StatefulPartitionedCall_15?$lstm_cell/StatefulPartitionedCall_16?$lstm_cell/StatefulPartitionedCall_17?$lstm_cell/StatefulPartitionedCall_18?$lstm_cell/StatefulPartitionedCall_19?#lstm_cell/StatefulPartitionedCall_2?$lstm_cell/StatefulPartitionedCall_20?$lstm_cell/StatefulPartitionedCall_21?$lstm_cell/StatefulPartitionedCall_22?#lstm_cell/StatefulPartitionedCall_3?#lstm_cell/StatefulPartitionedCall_4?#lstm_cell/StatefulPartitionedCall_5?#lstm_cell/StatefulPartitionedCall_6?#lstm_cell/StatefulPartitionedCall_7?#lstm_cell/StatefulPartitionedCall_8?#lstm_cell/StatefulPartitionedCall_9?rnn/StatefulPartitionedCall?
rnn/StatefulPartitionedCallStatefulPartitionedCallinput_1	rnn_27918	rnn_27920	rnn_27922*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_27140?
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0$rnn/StatefulPartitionedCall:output:1$rnn/StatefulPartitionedCall:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_1StatefulPartitionedCall*lstm_cell/StatefulPartitionedCall:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_1StatefulPartitionedCall(dense/StatefulPartitionedCall_1:output:0*lstm_cell/StatefulPartitionedCall:output:1*lstm_cell/StatefulPartitionedCall:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_2StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_1:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_2StatefulPartitionedCall(dense/StatefulPartitionedCall_2:output:0,lstm_cell/StatefulPartitionedCall_1:output:1,lstm_cell/StatefulPartitionedCall_1:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_3StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_2:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_3StatefulPartitionedCall(dense/StatefulPartitionedCall_3:output:0,lstm_cell/StatefulPartitionedCall_2:output:1,lstm_cell/StatefulPartitionedCall_2:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_4StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_3:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_4StatefulPartitionedCall(dense/StatefulPartitionedCall_4:output:0,lstm_cell/StatefulPartitionedCall_3:output:1,lstm_cell/StatefulPartitionedCall_3:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_5StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_4:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_5StatefulPartitionedCall(dense/StatefulPartitionedCall_5:output:0,lstm_cell/StatefulPartitionedCall_4:output:1,lstm_cell/StatefulPartitionedCall_4:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_6StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_5:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_6StatefulPartitionedCall(dense/StatefulPartitionedCall_6:output:0,lstm_cell/StatefulPartitionedCall_5:output:1,lstm_cell/StatefulPartitionedCall_5:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_7StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_6:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_7StatefulPartitionedCall(dense/StatefulPartitionedCall_7:output:0,lstm_cell/StatefulPartitionedCall_6:output:1,lstm_cell/StatefulPartitionedCall_6:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_8StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_7:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_8StatefulPartitionedCall(dense/StatefulPartitionedCall_8:output:0,lstm_cell/StatefulPartitionedCall_7:output:1,lstm_cell/StatefulPartitionedCall_7:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
dense/StatefulPartitionedCall_9StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_8:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
#lstm_cell/StatefulPartitionedCall_9StatefulPartitionedCall(dense/StatefulPartitionedCall_9:output:0,lstm_cell/StatefulPartitionedCall_8:output:1,lstm_cell/StatefulPartitionedCall_8:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_10StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_9:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_10StatefulPartitionedCall)dense/StatefulPartitionedCall_10:output:0,lstm_cell/StatefulPartitionedCall_9:output:1,lstm_cell/StatefulPartitionedCall_9:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_11StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_10:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_11StatefulPartitionedCall)dense/StatefulPartitionedCall_11:output:0-lstm_cell/StatefulPartitionedCall_10:output:1-lstm_cell/StatefulPartitionedCall_10:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_12StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_11:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_12StatefulPartitionedCall)dense/StatefulPartitionedCall_12:output:0-lstm_cell/StatefulPartitionedCall_11:output:1-lstm_cell/StatefulPartitionedCall_11:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_13StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_12:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_13StatefulPartitionedCall)dense/StatefulPartitionedCall_13:output:0-lstm_cell/StatefulPartitionedCall_12:output:1-lstm_cell/StatefulPartitionedCall_12:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_14StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_13:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_14StatefulPartitionedCall)dense/StatefulPartitionedCall_14:output:0-lstm_cell/StatefulPartitionedCall_13:output:1-lstm_cell/StatefulPartitionedCall_13:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_15StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_14:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_15StatefulPartitionedCall)dense/StatefulPartitionedCall_15:output:0-lstm_cell/StatefulPartitionedCall_14:output:1-lstm_cell/StatefulPartitionedCall_14:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_16StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_15:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_16StatefulPartitionedCall)dense/StatefulPartitionedCall_16:output:0-lstm_cell/StatefulPartitionedCall_15:output:1-lstm_cell/StatefulPartitionedCall_15:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_17StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_16:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_17StatefulPartitionedCall)dense/StatefulPartitionedCall_17:output:0-lstm_cell/StatefulPartitionedCall_16:output:1-lstm_cell/StatefulPartitionedCall_16:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_18StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_17:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_18StatefulPartitionedCall)dense/StatefulPartitionedCall_18:output:0-lstm_cell/StatefulPartitionedCall_17:output:1-lstm_cell/StatefulPartitionedCall_17:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_19StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_18:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_19StatefulPartitionedCall)dense/StatefulPartitionedCall_19:output:0-lstm_cell/StatefulPartitionedCall_18:output:1-lstm_cell/StatefulPartitionedCall_18:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_20StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_19:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_20StatefulPartitionedCall)dense/StatefulPartitionedCall_20:output:0-lstm_cell/StatefulPartitionedCall_19:output:1-lstm_cell/StatefulPartitionedCall_19:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_21StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_20:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_21StatefulPartitionedCall)dense/StatefulPartitionedCall_21:output:0-lstm_cell/StatefulPartitionedCall_20:output:1-lstm_cell/StatefulPartitionedCall_20:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_22StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_21:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
$lstm_cell/StatefulPartitionedCall_22StatefulPartitionedCall)dense/StatefulPartitionedCall_22:output:0-lstm_cell/StatefulPartitionedCall_21:output:1-lstm_cell/StatefulPartitionedCall_21:output:2	rnn_27918	rnn_27920	rnn_27922*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_27197?
 dense/StatefulPartitionedCall_23StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_22:output:0dense_27927dense_27929*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_27160?
stackPack&dense/StatefulPartitionedCall:output:0(dense/StatefulPartitionedCall_1:output:0(dense/StatefulPartitionedCall_2:output:0(dense/StatefulPartitionedCall_3:output:0(dense/StatefulPartitionedCall_4:output:0(dense/StatefulPartitionedCall_5:output:0(dense/StatefulPartitionedCall_6:output:0(dense/StatefulPartitionedCall_7:output:0(dense/StatefulPartitionedCall_8:output:0(dense/StatefulPartitionedCall_9:output:0)dense/StatefulPartitionedCall_10:output:0)dense/StatefulPartitionedCall_11:output:0)dense/StatefulPartitionedCall_12:output:0)dense/StatefulPartitionedCall_13:output:0)dense/StatefulPartitionedCall_14:output:0)dense/StatefulPartitionedCall_15:output:0)dense/StatefulPartitionedCall_16:output:0)dense/StatefulPartitionedCall_17:output:0)dense/StatefulPartitionedCall_18:output:0)dense/StatefulPartitionedCall_19:output:0)dense/StatefulPartitionedCall_20:output:0)dense/StatefulPartitionedCall_21:output:0)dense/StatefulPartitionedCall_22:output:0)dense/StatefulPartitionedCall_23:output:0*
N*
T0*+
_output_shapes
:?????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:?????????`
IdentityIdentitytranspose:y:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense/StatefulPartitionedCall_1!^dense/StatefulPartitionedCall_10!^dense/StatefulPartitionedCall_11!^dense/StatefulPartitionedCall_12!^dense/StatefulPartitionedCall_13!^dense/StatefulPartitionedCall_14!^dense/StatefulPartitionedCall_15!^dense/StatefulPartitionedCall_16!^dense/StatefulPartitionedCall_17!^dense/StatefulPartitionedCall_18!^dense/StatefulPartitionedCall_19 ^dense/StatefulPartitionedCall_2!^dense/StatefulPartitionedCall_20!^dense/StatefulPartitionedCall_21!^dense/StatefulPartitionedCall_22!^dense/StatefulPartitionedCall_23 ^dense/StatefulPartitionedCall_3 ^dense/StatefulPartitionedCall_4 ^dense/StatefulPartitionedCall_5 ^dense/StatefulPartitionedCall_6 ^dense/StatefulPartitionedCall_7 ^dense/StatefulPartitionedCall_8 ^dense/StatefulPartitionedCall_9"^lstm_cell/StatefulPartitionedCall$^lstm_cell/StatefulPartitionedCall_1%^lstm_cell/StatefulPartitionedCall_10%^lstm_cell/StatefulPartitionedCall_11%^lstm_cell/StatefulPartitionedCall_12%^lstm_cell/StatefulPartitionedCall_13%^lstm_cell/StatefulPartitionedCall_14%^lstm_cell/StatefulPartitionedCall_15%^lstm_cell/StatefulPartitionedCall_16%^lstm_cell/StatefulPartitionedCall_17%^lstm_cell/StatefulPartitionedCall_18%^lstm_cell/StatefulPartitionedCall_19$^lstm_cell/StatefulPartitionedCall_2%^lstm_cell/StatefulPartitionedCall_20%^lstm_cell/StatefulPartitionedCall_21%^lstm_cell/StatefulPartitionedCall_22$^lstm_cell/StatefulPartitionedCall_3$^lstm_cell/StatefulPartitionedCall_4$^lstm_cell/StatefulPartitionedCall_5$^lstm_cell/StatefulPartitionedCall_6$^lstm_cell/StatefulPartitionedCall_7$^lstm_cell/StatefulPartitionedCall_8$^lstm_cell/StatefulPartitionedCall_9^rnn/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????0: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense/StatefulPartitionedCall_1dense/StatefulPartitionedCall_12D
 dense/StatefulPartitionedCall_10 dense/StatefulPartitionedCall_102D
 dense/StatefulPartitionedCall_11 dense/StatefulPartitionedCall_112D
 dense/StatefulPartitionedCall_12 dense/StatefulPartitionedCall_122D
 dense/StatefulPartitionedCall_13 dense/StatefulPartitionedCall_132D
 dense/StatefulPartitionedCall_14 dense/StatefulPartitionedCall_142D
 dense/StatefulPartitionedCall_15 dense/StatefulPartitionedCall_152D
 dense/StatefulPartitionedCall_16 dense/StatefulPartitionedCall_162D
 dense/StatefulPartitionedCall_17 dense/StatefulPartitionedCall_172D
 dense/StatefulPartitionedCall_18 dense/StatefulPartitionedCall_182D
 dense/StatefulPartitionedCall_19 dense/StatefulPartitionedCall_192B
dense/StatefulPartitionedCall_2dense/StatefulPartitionedCall_22D
 dense/StatefulPartitionedCall_20 dense/StatefulPartitionedCall_202D
 dense/StatefulPartitionedCall_21 dense/StatefulPartitionedCall_212D
 dense/StatefulPartitionedCall_22 dense/StatefulPartitionedCall_222D
 dense/StatefulPartitionedCall_23 dense/StatefulPartitionedCall_232B
dense/StatefulPartitionedCall_3dense/StatefulPartitionedCall_32B
dense/StatefulPartitionedCall_4dense/StatefulPartitionedCall_42B
dense/StatefulPartitionedCall_5dense/StatefulPartitionedCall_52B
dense/StatefulPartitionedCall_6dense/StatefulPartitionedCall_62B
dense/StatefulPartitionedCall_7dense/StatefulPartitionedCall_72B
dense/StatefulPartitionedCall_8dense/StatefulPartitionedCall_82B
dense/StatefulPartitionedCall_9dense/StatefulPartitionedCall_92F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2J
#lstm_cell/StatefulPartitionedCall_1#lstm_cell/StatefulPartitionedCall_12L
$lstm_cell/StatefulPartitionedCall_10$lstm_cell/StatefulPartitionedCall_102L
$lstm_cell/StatefulPartitionedCall_11$lstm_cell/StatefulPartitionedCall_112L
$lstm_cell/StatefulPartitionedCall_12$lstm_cell/StatefulPartitionedCall_122L
$lstm_cell/StatefulPartitionedCall_13$lstm_cell/StatefulPartitionedCall_132L
$lstm_cell/StatefulPartitionedCall_14$lstm_cell/StatefulPartitionedCall_142L
$lstm_cell/StatefulPartitionedCall_15$lstm_cell/StatefulPartitionedCall_152L
$lstm_cell/StatefulPartitionedCall_16$lstm_cell/StatefulPartitionedCall_162L
$lstm_cell/StatefulPartitionedCall_17$lstm_cell/StatefulPartitionedCall_172L
$lstm_cell/StatefulPartitionedCall_18$lstm_cell/StatefulPartitionedCall_182L
$lstm_cell/StatefulPartitionedCall_19$lstm_cell/StatefulPartitionedCall_192J
#lstm_cell/StatefulPartitionedCall_2#lstm_cell/StatefulPartitionedCall_22L
$lstm_cell/StatefulPartitionedCall_20$lstm_cell/StatefulPartitionedCall_202L
$lstm_cell/StatefulPartitionedCall_21$lstm_cell/StatefulPartitionedCall_212L
$lstm_cell/StatefulPartitionedCall_22$lstm_cell/StatefulPartitionedCall_222J
#lstm_cell/StatefulPartitionedCall_3#lstm_cell/StatefulPartitionedCall_32J
#lstm_cell/StatefulPartitionedCall_4#lstm_cell/StatefulPartitionedCall_42J
#lstm_cell/StatefulPartitionedCall_5#lstm_cell/StatefulPartitionedCall_52J
#lstm_cell/StatefulPartitionedCall_6#lstm_cell/StatefulPartitionedCall_62J
#lstm_cell/StatefulPartitionedCall_7#lstm_cell/StatefulPartitionedCall_72J
#lstm_cell/StatefulPartitionedCall_8#lstm_cell/StatefulPartitionedCall_82J
#lstm_cell/StatefulPartitionedCall_9#lstm_cell/StatefulPartitionedCall_92:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:T P
+
_output_shapes
:?????????0
!
_user_specified_name	input_1
?
?
#__inference_signature_wrapper_28394
input_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_26660s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????0: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????0
!
_user_specified_name	input_1
?G
?
feed_back_rnn_while_body_259938
4feed_back_rnn_while_feed_back_rnn_while_loop_counter>
:feed_back_rnn_while_feed_back_rnn_while_maximum_iterations#
feed_back_rnn_while_placeholder%
!feed_back_rnn_while_placeholder_1%
!feed_back_rnn_while_placeholder_2%
!feed_back_rnn_while_placeholder_37
3feed_back_rnn_while_feed_back_rnn_strided_slice_1_0s
ofeed_back_rnn_while_tensorarrayv2read_tensorlistgetitem_feed_back_rnn_tensorarrayunstack_tensorlistfromtensor_0Q
>feed_back_rnn_while_lstm_cell_matmul_readvariableop_resource_0:	?T
@feed_back_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:
??N
?feed_back_rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	? 
feed_back_rnn_while_identity"
feed_back_rnn_while_identity_1"
feed_back_rnn_while_identity_2"
feed_back_rnn_while_identity_3"
feed_back_rnn_while_identity_4"
feed_back_rnn_while_identity_55
1feed_back_rnn_while_feed_back_rnn_strided_slice_1q
mfeed_back_rnn_while_tensorarrayv2read_tensorlistgetitem_feed_back_rnn_tensorarrayunstack_tensorlistfromtensorO
<feed_back_rnn_while_lstm_cell_matmul_readvariableop_resource:	?R
>feed_back_rnn_while_lstm_cell_matmul_1_readvariableop_resource:
??L
=feed_back_rnn_while_lstm_cell_biasadd_readvariableop_resource:	???4feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp?3feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp?5feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp?
Efeed_back/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
7feed_back/rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemofeed_back_rnn_while_tensorarrayv2read_tensorlistgetitem_feed_back_rnn_tensorarrayunstack_tensorlistfromtensor_0feed_back_rnn_while_placeholderNfeed_back/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
3feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp>feed_back_rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
$feed_back/rnn/while/lstm_cell/MatMulMatMul>feed_back/rnn/while/TensorArrayV2Read/TensorListGetItem:item:0;feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp@feed_back_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
&feed_back/rnn/while/lstm_cell/MatMul_1MatMul!feed_back_rnn_while_placeholder_2=feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!feed_back/rnn/while/lstm_cell/addAddV2.feed_back/rnn/while/lstm_cell/MatMul:product:00feed_back/rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
4feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp?feed_back_rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
%feed_back/rnn/while/lstm_cell/BiasAddBiasAdd%feed_back/rnn/while/lstm_cell/add:z:0<feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????o
-feed_back/rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
#feed_back/rnn/while/lstm_cell/splitSplit6feed_back/rnn/while/lstm_cell/split/split_dim:output:0.feed_back/rnn/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split?
%feed_back/rnn/while/lstm_cell/SigmoidSigmoid,feed_back/rnn/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:???????????
'feed_back/rnn/while/lstm_cell/Sigmoid_1Sigmoid,feed_back/rnn/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:???????????
!feed_back/rnn/while/lstm_cell/mulMul+feed_back/rnn/while/lstm_cell/Sigmoid_1:y:0!feed_back_rnn_while_placeholder_3*
T0*(
_output_shapes
:???????????
"feed_back/rnn/while/lstm_cell/TanhTanh,feed_back/rnn/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:???????????
#feed_back/rnn/while/lstm_cell/mul_1Mul)feed_back/rnn/while/lstm_cell/Sigmoid:y:0&feed_back/rnn/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:???????????
#feed_back/rnn/while/lstm_cell/add_1AddV2%feed_back/rnn/while/lstm_cell/mul:z:0'feed_back/rnn/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:???????????
'feed_back/rnn/while/lstm_cell/Sigmoid_2Sigmoid,feed_back/rnn/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:???????????
$feed_back/rnn/while/lstm_cell/Tanh_1Tanh'feed_back/rnn/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:???????????
#feed_back/rnn/while/lstm_cell/mul_2Mul+feed_back/rnn/while/lstm_cell/Sigmoid_2:y:0(feed_back/rnn/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:???????????
8feed_back/rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!feed_back_rnn_while_placeholder_1feed_back_rnn_while_placeholder'feed_back/rnn/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???[
feed_back/rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/rnn/while/addAddV2feed_back_rnn_while_placeholder"feed_back/rnn/while/add/y:output:0*
T0*
_output_shapes
: ]
feed_back/rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
feed_back/rnn/while/add_1AddV24feed_back_rnn_while_feed_back_rnn_while_loop_counter$feed_back/rnn/while/add_1/y:output:0*
T0*
_output_shapes
: ?
feed_back/rnn/while/IdentityIdentityfeed_back/rnn/while/add_1:z:0^feed_back/rnn/while/NoOp*
T0*
_output_shapes
: ?
feed_back/rnn/while/Identity_1Identity:feed_back_rnn_while_feed_back_rnn_while_maximum_iterations^feed_back/rnn/while/NoOp*
T0*
_output_shapes
: ?
feed_back/rnn/while/Identity_2Identityfeed_back/rnn/while/add:z:0^feed_back/rnn/while/NoOp*
T0*
_output_shapes
: ?
feed_back/rnn/while/Identity_3IdentityHfeed_back/rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^feed_back/rnn/while/NoOp*
T0*
_output_shapes
: ?
feed_back/rnn/while/Identity_4Identity'feed_back/rnn/while/lstm_cell/mul_2:z:0^feed_back/rnn/while/NoOp*
T0*(
_output_shapes
:???????????
feed_back/rnn/while/Identity_5Identity'feed_back/rnn/while/lstm_cell/add_1:z:0^feed_back/rnn/while/NoOp*
T0*(
_output_shapes
:???????????
feed_back/rnn/while/NoOpNoOp5^feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp4^feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp6^feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1feed_back_rnn_while_feed_back_rnn_strided_slice_13feed_back_rnn_while_feed_back_rnn_strided_slice_1_0"E
feed_back_rnn_while_identity%feed_back/rnn/while/Identity:output:0"I
feed_back_rnn_while_identity_1'feed_back/rnn/while/Identity_1:output:0"I
feed_back_rnn_while_identity_2'feed_back/rnn/while/Identity_2:output:0"I
feed_back_rnn_while_identity_3'feed_back/rnn/while/Identity_3:output:0"I
feed_back_rnn_while_identity_4'feed_back/rnn/while/Identity_4:output:0"I
feed_back_rnn_while_identity_5'feed_back/rnn/while/Identity_5:output:0"?
=feed_back_rnn_while_lstm_cell_biasadd_readvariableop_resource?feed_back_rnn_while_lstm_cell_biasadd_readvariableop_resource_0"?
>feed_back_rnn_while_lstm_cell_matmul_1_readvariableop_resource@feed_back_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"~
<feed_back_rnn_while_lstm_cell_matmul_readvariableop_resource>feed_back_rnn_while_lstm_cell_matmul_readvariableop_resource_0"?
mfeed_back_rnn_while_tensorarrayv2read_tensorlistgetitem_feed_back_rnn_tensorarrayunstack_tensorlistfromtensorofeed_back_rnn_while_tensorarrayv2read_tensorlistgetitem_feed_back_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2l
4feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp4feed_back/rnn/while/lstm_cell/BiasAdd/ReadVariableOp2j
3feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp3feed_back/rnn/while/lstm_cell/MatMul/ReadVariableOp2n
5feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp5feed_back/rnn/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_lstm_cell_layer_call_fn_29910

inputs
states_0
states_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_26878p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?6
?
while_body_30623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
??@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?D
0while_lstm_cell_matmul_1_readvariableop_resource:
??>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:???????????
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????o
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:???????????
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????l
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?9
?
>__inference_rnn_layer_call_and_return_conditional_losses_27140

inputs"
lstm_cell_27057:	?#
lstm_cell_27059:
??
lstm_cell_27061:	?
identity

identity_1

identity_2??!lstm_cell/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:0?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_27057lstm_cell_27059lstm_cell_27061*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_26727n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_27057lstm_cell_27059lstm_cell_27061*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_27070*
condR
while_cond_27069*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:0??????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????0?h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:??????????`

Identity_2Identitywhile:output:5^NoOp*
T0*(
_output_shapes
:??????????r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????0: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
)__inference_feed_back_layer_call_fn_28409

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_feed_back_layer_call_and_return_conditional_losses_27409s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????0: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
feed_back_rnn_while_cond_259928
4feed_back_rnn_while_feed_back_rnn_while_loop_counter>
:feed_back_rnn_while_feed_back_rnn_while_maximum_iterations#
feed_back_rnn_while_placeholder%
!feed_back_rnn_while_placeholder_1%
!feed_back_rnn_while_placeholder_2%
!feed_back_rnn_while_placeholder_3:
6feed_back_rnn_while_less_feed_back_rnn_strided_slice_1O
Kfeed_back_rnn_while_feed_back_rnn_while_cond_25992___redundant_placeholder0O
Kfeed_back_rnn_while_feed_back_rnn_while_cond_25992___redundant_placeholder1O
Kfeed_back_rnn_while_feed_back_rnn_while_cond_25992___redundant_placeholder2O
Kfeed_back_rnn_while_feed_back_rnn_while_cond_25992___redundant_placeholder3 
feed_back_rnn_while_identity
?
feed_back/rnn/while/LessLessfeed_back_rnn_while_placeholder6feed_back_rnn_while_less_feed_back_rnn_strided_slice_1*
T0*
_output_shapes
: g
feed_back/rnn/while/IdentityIdentityfeed_back/rnn/while/Less:z:0*
T0
*
_output_shapes
: "E
feed_back_rnn_while_identity%feed_back/rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_30190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_30190___redundant_placeholder03
/while_while_cond_30190___redundant_placeholder13
/while_while_cond_30190___redundant_placeholder23
/while_while_cond_30190___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
#__inference_rnn_layer_call_fn_30117

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_rnn_layer_call_and_return_conditional_losses_27140p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
)__inference_feed_back_layer_call_fn_28424

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_feed_back_layer_call_and_return_conditional_losses_27887s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????0: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?6
?
while_body_30191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
??@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?D
0while_lstm_cell_matmul_1_readvariableop_resource:
??>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:??????????w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:???????????
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????o
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:???????????
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:??????????w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:??????????l
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?"
?
while_body_26741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_26765_0:	?+
while_lstm_cell_26767_0:
??&
while_lstm_cell_26769_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_26765:	?)
while_lstm_cell_26767:
??$
while_lstm_cell_26769:	???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_26765_0while_lstm_cell_26767_0while_lstm_cell_26769_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_26727?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:???????????
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:??????????v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_26765while_lstm_cell_26765_0"0
while_lstm_cell_26767while_lstm_cell_26767_0"0
while_lstm_cell_26769while_lstm_cell_26769_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_30072

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:??????????V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:??????????U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
input_14
serving_default_input_1:0?????????0@
output_14
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?r
?
	lstm_cell
lstm_rnn
	dense
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
K__call__
*L&call_and_return_all_conditional_losses
M_default_save_signature"
_tf_keras_model
?


state_size

kernel
recurrent_kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iter

beta_1

beta_2
	 decay
!learning_ratemAmBmCmDmEvFvGvHvIvJ"
	optimizer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
"non_trainable_variables

#layers
$metrics
%layer_regularization_losses
&layer_metrics
	variables
trainable_variables
regularization_losses
K__call__
M_default_save_signature
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
,
Tserving_default"
signature_map
 "
trackable_list_wrapper
':%	?2rnn/lstm_cell/kernel
2:0
??2rnn/lstm_cell/recurrent_kernel
!:?2rnn/lstm_cell/bias
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

,states
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
:	?2dense/kernel
:2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
70
81"
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
0"
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
N
	9total
	:count
;	variables
<	keras_api"
_tf_keras_metric
N
	=total
	>count
?	variables
@	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
90
:1"
trackable_list_wrapper
-
;	variables"
_generic_user_object
:  (2total
:  (2count
.
=0
>1"
trackable_list_wrapper
-
?	variables"
_generic_user_object
,:*	?2Adam/rnn/lstm_cell/kernel/m
7:5
??2%Adam/rnn/lstm_cell/recurrent_kernel/m
&:$?2Adam/rnn/lstm_cell/bias/m
$:"	?2Adam/dense/kernel/m
:2Adam/dense/bias/m
,:*	?2Adam/rnn/lstm_cell/kernel/v
7:5
??2%Adam/rnn/lstm_cell/recurrent_kernel/v
&:$?2Adam/rnn/lstm_cell/bias/v
$:"	?2Adam/dense/kernel/v
:2Adam/dense/bias/v
?2?
)__inference_feed_back_layer_call_fn_27422
)__inference_feed_back_layer_call_fn_28409
)__inference_feed_back_layer_call_fn_28424
)__inference_feed_back_layer_call_fn_27915?
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
?2?
D__inference_feed_back_layer_call_and_return_conditional_losses_29150
D__inference_feed_back_layer_call_and_return_conditional_losses_29876
D__inference_feed_back_layer_call_and_return_conditional_losses_28143
D__inference_feed_back_layer_call_and_return_conditional_losses_28371?
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
?B?
 __inference__wrapped_model_26660input_1"?
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
)__inference_lstm_cell_layer_call_fn_29893
)__inference_lstm_cell_layer_call_fn_29910
)__inference_lstm_cell_layer_call_fn_29927
)__inference_lstm_cell_layer_call_fn_29944?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
?2?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_29976
D__inference_lstm_cell_layer_call_and_return_conditional_losses_30008
D__inference_lstm_cell_layer_call_and_return_conditional_losses_30040
D__inference_lstm_cell_layer_call_and_return_conditional_losses_30072?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
?2?
#__inference_rnn_layer_call_fn_30087
#__inference_rnn_layer_call_fn_30102
#__inference_rnn_layer_call_fn_30117
#__inference_rnn_layer_call_fn_30132?
???
FullArgSpecO
argsG?D
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults?

 
p 

 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
>__inference_rnn_layer_call_and_return_conditional_losses_30276
>__inference_rnn_layer_call_and_return_conditional_losses_30420
>__inference_rnn_layer_call_and_return_conditional_losses_30564
>__inference_rnn_layer_call_and_return_conditional_losses_30708?
???
FullArgSpecO
argsG?D
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults?

 
p 

 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_30717?
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
@__inference_dense_layer_call_and_return_conditional_losses_30727?
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
#__inference_signature_wrapper_28394input_1"?
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
 ?
 __inference__wrapped_model_26660v4?1
*?'
%?"
input_1?????????0
? "7?4
2
output_1&?#
output_1??????????
@__inference_dense_layer_call_and_return_conditional_losses_30727]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? y
%__inference_dense_layer_call_fn_30717P0?-
&?#
!?
inputs??????????
? "???????????
D__inference_feed_back_layer_call_and_return_conditional_losses_28143l8?5
.?+
%?"
input_1?????????0
p 
? ")?&
?
0?????????
? ?
D__inference_feed_back_layer_call_and_return_conditional_losses_28371l8?5
.?+
%?"
input_1?????????0
p
? ")?&
?
0?????????
? ?
D__inference_feed_back_layer_call_and_return_conditional_losses_29150k7?4
-?*
$?!
inputs?????????0
p 
? ")?&
?
0?????????
? ?
D__inference_feed_back_layer_call_and_return_conditional_losses_29876k7?4
-?*
$?!
inputs?????????0
p
? ")?&
?
0?????????
? ?
)__inference_feed_back_layer_call_fn_27422_8?5
.?+
%?"
input_1?????????0
p 
? "???????????
)__inference_feed_back_layer_call_fn_27915_8?5
.?+
%?"
input_1?????????0
p
? "???????????
)__inference_feed_back_layer_call_fn_28409^7?4
-?*
$?!
inputs?????????0
p 
? "???????????
)__inference_feed_back_layer_call_fn_28424^7?4
-?*
$?!
inputs?????????0
p
? "???????????
D__inference_lstm_cell_layer_call_and_return_conditional_losses_29976???
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_30008???
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_30040???
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_30072???
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
)__inference_lstm_cell_layer_call_fn_29893???
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
)__inference_lstm_cell_layer_call_fn_29910???
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
)__inference_lstm_cell_layer_call_fn_29927???
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
)__inference_lstm_cell_layer_call_fn_29944???
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
>__inference_rnn_layer_call_and_return_conditional_losses_30276?S?P
I?F
4?1
/?,
inputs/0??????????????????

 
p 

 

 
? "m?j
c?`
?
0/0??????????
?
0/1??????????
?
0/2??????????
? ?
>__inference_rnn_layer_call_and_return_conditional_losses_30420?S?P
I?F
4?1
/?,
inputs/0??????????????????

 
p

 

 
? "m?j
c?`
?
0/0??????????
?
0/1??????????
?
0/2??????????
? ?
>__inference_rnn_layer_call_and_return_conditional_losses_30564?C?@
9?6
$?!
inputs?????????0

 
p 

 

 
? "m?j
c?`
?
0/0??????????
?
0/1??????????
?
0/2??????????
? ?
>__inference_rnn_layer_call_and_return_conditional_losses_30708?C?@
9?6
$?!
inputs?????????0

 
p

 

 
? "m?j
c?`
?
0/0??????????
?
0/1??????????
?
0/2??????????
? ?
#__inference_rnn_layer_call_fn_30087?S?P
I?F
4?1
/?,
inputs/0??????????????????

 
p 

 

 
? "]?Z
?
0??????????
?
1??????????
?
2???????????
#__inference_rnn_layer_call_fn_30102?S?P
I?F
4?1
/?,
inputs/0??????????????????

 
p

 

 
? "]?Z
?
0??????????
?
1??????????
?
2???????????
#__inference_rnn_layer_call_fn_30117?C?@
9?6
$?!
inputs?????????0

 
p 

 

 
? "]?Z
?
0??????????
?
1??????????
?
2???????????
#__inference_rnn_layer_call_fn_30132?C?@
9?6
$?!
inputs?????????0

 
p

 

 
? "]?Z
?
0??????????
?
1??????????
?
2???????????
#__inference_signature_wrapper_28394???<
? 
5?2
0
input_1%?"
input_1?????????0"7?4
2
output_1&?#
output_1?????????