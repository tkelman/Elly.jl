using Compat
using ProtoBuf
import ProtoBuf.meta
import Base: hash, isequal, ==

# service methods for ApplicationMasterProtocolService
const _ApplicationMasterProtocolService_methods = MethodDescriptor[
        MethodDescriptor("registerApplicationMaster", 1, RegisterApplicationMasterRequestProto, RegisterApplicationMasterResponseProto),
        MethodDescriptor("finishApplicationMaster", 2, FinishApplicationMasterRequestProto, FinishApplicationMasterResponseProto),
        MethodDescriptor("allocate", 3, AllocateRequestProto, AllocateResponseProto)
    ] # const _ApplicationMasterProtocolService_methods
const _ApplicationMasterProtocolService_desc = ServiceDescriptor("ApplicationMasterProtocolService", 1, _ApplicationMasterProtocolService_methods)

ApplicationMasterProtocolService(impl::Module) = ProtoService(_ApplicationMasterProtocolService_desc, impl)

type ApplicationMasterProtocolServiceStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    ApplicationMasterProtocolServiceStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_ApplicationMasterProtocolService_desc, channel))
end # type ApplicationMasterProtocolServiceStub

type ApplicationMasterProtocolServiceBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    ApplicationMasterProtocolServiceBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_ApplicationMasterProtocolService_desc, channel))
end # type ApplicationMasterProtocolServiceBlockingStub

registerApplicationMaster(stub::ApplicationMasterProtocolServiceStub, controller::ProtoRpcController, inp::RegisterApplicationMasterRequestProto, done::Function) = call_method(stub.impl, _ApplicationMasterProtocolService_methods[1], controller, inp, done)
registerApplicationMaster(stub::ApplicationMasterProtocolServiceBlockingStub, controller::ProtoRpcController, inp::RegisterApplicationMasterRequestProto) = call_method(stub.impl, _ApplicationMasterProtocolService_methods[1], controller, inp)

finishApplicationMaster(stub::ApplicationMasterProtocolServiceStub, controller::ProtoRpcController, inp::FinishApplicationMasterRequestProto, done::Function) = call_method(stub.impl, _ApplicationMasterProtocolService_methods[2], controller, inp, done)
finishApplicationMaster(stub::ApplicationMasterProtocolServiceBlockingStub, controller::ProtoRpcController, inp::FinishApplicationMasterRequestProto) = call_method(stub.impl, _ApplicationMasterProtocolService_methods[2], controller, inp)

allocate(stub::ApplicationMasterProtocolServiceStub, controller::ProtoRpcController, inp::AllocateRequestProto, done::Function) = call_method(stub.impl, _ApplicationMasterProtocolService_methods[3], controller, inp, done)
allocate(stub::ApplicationMasterProtocolServiceBlockingStub, controller::ProtoRpcController, inp::AllocateRequestProto) = call_method(stub.impl, _ApplicationMasterProtocolService_methods[3], controller, inp)

export ApplicationMasterProtocolService, ApplicationMasterProtocolServiceStub, ApplicationMasterProtocolServiceBlockingStub, registerApplicationMaster, finishApplicationMaster, allocate
