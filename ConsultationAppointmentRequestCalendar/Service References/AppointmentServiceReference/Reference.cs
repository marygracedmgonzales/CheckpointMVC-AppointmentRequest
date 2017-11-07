﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ConsultationAppointmentRequestCalendar.AppointmentServiceReference {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="PhysicianEntity", Namespace="http://schemas.datacontract.org/2004/07/AppointmentRequestWCF")]
    [System.SerializableAttribute()]
    public partial class PhysicianEntity : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string FirstNameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string LastNameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string MiddleNameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int PhysicianIdField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private ConsultationAppointmentRequestCalendar.AppointmentServiceReference.ScheduleEntity[] ScheduleField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string SpecializationField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string FirstName {
            get {
                return this.FirstNameField;
            }
            set {
                if ((object.ReferenceEquals(this.FirstNameField, value) != true)) {
                    this.FirstNameField = value;
                    this.RaisePropertyChanged("FirstName");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string LastName {
            get {
                return this.LastNameField;
            }
            set {
                if ((object.ReferenceEquals(this.LastNameField, value) != true)) {
                    this.LastNameField = value;
                    this.RaisePropertyChanged("LastName");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string MiddleName {
            get {
                return this.MiddleNameField;
            }
            set {
                if ((object.ReferenceEquals(this.MiddleNameField, value) != true)) {
                    this.MiddleNameField = value;
                    this.RaisePropertyChanged("MiddleName");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int PhysicianId {
            get {
                return this.PhysicianIdField;
            }
            set {
                if ((this.PhysicianIdField.Equals(value) != true)) {
                    this.PhysicianIdField = value;
                    this.RaisePropertyChanged("PhysicianId");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ConsultationAppointmentRequestCalendar.AppointmentServiceReference.ScheduleEntity[] Schedule {
            get {
                return this.ScheduleField;
            }
            set {
                if ((object.ReferenceEquals(this.ScheduleField, value) != true)) {
                    this.ScheduleField = value;
                    this.RaisePropertyChanged("Schedule");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Specialization {
            get {
                return this.SpecializationField;
            }
            set {
                if ((object.ReferenceEquals(this.SpecializationField, value) != true)) {
                    this.SpecializationField = value;
                    this.RaisePropertyChanged("Specialization");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ScheduleEntity", Namespace="http://schemas.datacontract.org/2004/07/AppointmentRequestWCF")]
    [System.SerializableAttribute()]
    public partial class ScheduleEntity : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string DayField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int ScheduleIdField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private ConsultationAppointmentRequestCalendar.AppointmentServiceReference.TimeEntity[] TimeField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Day {
            get {
                return this.DayField;
            }
            set {
                if ((object.ReferenceEquals(this.DayField, value) != true)) {
                    this.DayField = value;
                    this.RaisePropertyChanged("Day");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int ScheduleId {
            get {
                return this.ScheduleIdField;
            }
            set {
                if ((this.ScheduleIdField.Equals(value) != true)) {
                    this.ScheduleIdField = value;
                    this.RaisePropertyChanged("ScheduleId");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public ConsultationAppointmentRequestCalendar.AppointmentServiceReference.TimeEntity[] Time {
            get {
                return this.TimeField;
            }
            set {
                if ((object.ReferenceEquals(this.TimeField, value) != true)) {
                    this.TimeField = value;
                    this.RaisePropertyChanged("Time");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="TimeEntity", Namespace="http://schemas.datacontract.org/2004/07/AppointmentRequestWCF")]
    [System.SerializableAttribute()]
    public partial class TimeEntity : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int EndTimeField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int StartTimeField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int TimeIdField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int EndTime {
            get {
                return this.EndTimeField;
            }
            set {
                if ((this.EndTimeField.Equals(value) != true)) {
                    this.EndTimeField = value;
                    this.RaisePropertyChanged("EndTime");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int StartTime {
            get {
                return this.StartTimeField;
            }
            set {
                if ((this.StartTimeField.Equals(value) != true)) {
                    this.StartTimeField = value;
                    this.RaisePropertyChanged("StartTime");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int TimeId {
            get {
                return this.TimeIdField;
            }
            set {
                if ((this.TimeIdField.Equals(value) != true)) {
                    this.TimeIdField = value;
                    this.RaisePropertyChanged("TimeId");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="AppointmentEntity", Namespace="http://schemas.datacontract.org/2004/07/AppointmentRequestWCF")]
    [System.SerializableAttribute()]
    public partial class AppointmentEntity : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int AppointmentIdField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.DateTime DateField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int PatientIdField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int PhysicianIdField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int PurposeIdField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string RemarksField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int ScheduleIdField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int TimeIdField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int AppointmentId {
            get {
                return this.AppointmentIdField;
            }
            set {
                if ((this.AppointmentIdField.Equals(value) != true)) {
                    this.AppointmentIdField = value;
                    this.RaisePropertyChanged("AppointmentId");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.DateTime Date {
            get {
                return this.DateField;
            }
            set {
                if ((this.DateField.Equals(value) != true)) {
                    this.DateField = value;
                    this.RaisePropertyChanged("Date");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int PatientId {
            get {
                return this.PatientIdField;
            }
            set {
                if ((this.PatientIdField.Equals(value) != true)) {
                    this.PatientIdField = value;
                    this.RaisePropertyChanged("PatientId");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int PhysicianId {
            get {
                return this.PhysicianIdField;
            }
            set {
                if ((this.PhysicianIdField.Equals(value) != true)) {
                    this.PhysicianIdField = value;
                    this.RaisePropertyChanged("PhysicianId");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int PurposeId {
            get {
                return this.PurposeIdField;
            }
            set {
                if ((this.PurposeIdField.Equals(value) != true)) {
                    this.PurposeIdField = value;
                    this.RaisePropertyChanged("PurposeId");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Remarks {
            get {
                return this.RemarksField;
            }
            set {
                if ((object.ReferenceEquals(this.RemarksField, value) != true)) {
                    this.RemarksField = value;
                    this.RaisePropertyChanged("Remarks");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int ScheduleId {
            get {
                return this.ScheduleIdField;
            }
            set {
                if ((this.ScheduleIdField.Equals(value) != true)) {
                    this.ScheduleIdField = value;
                    this.RaisePropertyChanged("ScheduleId");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int TimeId {
            get {
                return this.TimeIdField;
            }
            set {
                if ((this.TimeIdField.Equals(value) != true)) {
                    this.TimeIdField = value;
                    this.RaisePropertyChanged("TimeId");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="PatientEntity", Namespace="http://schemas.datacontract.org/2004/07/AppointmentRequestWCF")]
    [System.SerializableAttribute()]
    public partial class PatientEntity : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int AgeField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string FirstNameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string LastNameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string MiddleNameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int PatientIdField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int Age {
            get {
                return this.AgeField;
            }
            set {
                if ((this.AgeField.Equals(value) != true)) {
                    this.AgeField = value;
                    this.RaisePropertyChanged("Age");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string FirstName {
            get {
                return this.FirstNameField;
            }
            set {
                if ((object.ReferenceEquals(this.FirstNameField, value) != true)) {
                    this.FirstNameField = value;
                    this.RaisePropertyChanged("FirstName");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string LastName {
            get {
                return this.LastNameField;
            }
            set {
                if ((object.ReferenceEquals(this.LastNameField, value) != true)) {
                    this.LastNameField = value;
                    this.RaisePropertyChanged("LastName");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string MiddleName {
            get {
                return this.MiddleNameField;
            }
            set {
                if ((object.ReferenceEquals(this.MiddleNameField, value) != true)) {
                    this.MiddleNameField = value;
                    this.RaisePropertyChanged("MiddleName");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int PatientId {
            get {
                return this.PatientIdField;
            }
            set {
                if ((this.PatientIdField.Equals(value) != true)) {
                    this.PatientIdField = value;
                    this.RaisePropertyChanged("PatientId");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="AppointmentServiceReference.IAppointmentRequest")]
    public interface IAppointmentRequest {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/GetPhysicians", ReplyAction="http://tempuri.org/IAppointmentRequest/GetPhysiciansResponse")]
        ConsultationAppointmentRequestCalendar.AppointmentServiceReference.PhysicianEntity[] GetPhysicians();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/GetPhysicians", ReplyAction="http://tempuri.org/IAppointmentRequest/GetPhysiciansResponse")]
        System.Threading.Tasks.Task<ConsultationAppointmentRequestCalendar.AppointmentServiceReference.PhysicianEntity[]> GetPhysiciansAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/GetPhysician", ReplyAction="http://tempuri.org/IAppointmentRequest/GetPhysicianResponse")]
        ConsultationAppointmentRequestCalendar.AppointmentServiceReference.PhysicianEntity GetPhysician(int physicianId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/GetPhysician", ReplyAction="http://tempuri.org/IAppointmentRequest/GetPhysicianResponse")]
        System.Threading.Tasks.Task<ConsultationAppointmentRequestCalendar.AppointmentServiceReference.PhysicianEntity> GetPhysicianAsync(int physicianId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/GetAppointmentList", ReplyAction="http://tempuri.org/IAppointmentRequest/GetAppointmentListResponse")]
        ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity[] GetAppointmentList();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/GetAppointmentList", ReplyAction="http://tempuri.org/IAppointmentRequest/GetAppointmentListResponse")]
        System.Threading.Tasks.Task<ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity[]> GetAppointmentListAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/SetAppointment", ReplyAction="http://tempuri.org/IAppointmentRequest/SetAppointmentResponse")]
        ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity SetAppointment(int physicianId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/SetAppointment", ReplyAction="http://tempuri.org/IAppointmentRequest/SetAppointmentResponse")]
        System.Threading.Tasks.Task<ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity> SetAppointmentAsync(int physicianId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/GetPatientList", ReplyAction="http://tempuri.org/IAppointmentRequest/GetPatientListResponse")]
        ConsultationAppointmentRequestCalendar.AppointmentServiceReference.PatientEntity[] GetPatientList();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/GetPatientList", ReplyAction="http://tempuri.org/IAppointmentRequest/GetPatientListResponse")]
        System.Threading.Tasks.Task<ConsultationAppointmentRequestCalendar.AppointmentServiceReference.PatientEntity[]> GetPatientListAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/SaveAppointment", ReplyAction="http://tempuri.org/IAppointmentRequest/SaveAppointmentResponse")]
        bool SaveAppointment(ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity appointmentRequest);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/SaveAppointment", ReplyAction="http://tempuri.org/IAppointmentRequest/SaveAppointmentResponse")]
        System.Threading.Tasks.Task<bool> SaveAppointmentAsync(ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity appointmentRequest);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/UpdateAppointment", ReplyAction="http://tempuri.org/IAppointmentRequest/UpdateAppointmentResponse")]
        bool UpdateAppointment(ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity updatedRequest);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/UpdateAppointment", ReplyAction="http://tempuri.org/IAppointmentRequest/UpdateAppointmentResponse")]
        System.Threading.Tasks.Task<bool> UpdateAppointmentAsync(ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity updatedRequest);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/DeleteAppointment", ReplyAction="http://tempuri.org/IAppointmentRequest/DeleteAppointmentResponse")]
        bool DeleteAppointment(int appointmentId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAppointmentRequest/DeleteAppointment", ReplyAction="http://tempuri.org/IAppointmentRequest/DeleteAppointmentResponse")]
        System.Threading.Tasks.Task<bool> DeleteAppointmentAsync(int appointmentId);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IAppointmentRequestChannel : ConsultationAppointmentRequestCalendar.AppointmentServiceReference.IAppointmentRequest, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class AppointmentRequestClient : System.ServiceModel.ClientBase<ConsultationAppointmentRequestCalendar.AppointmentServiceReference.IAppointmentRequest>, ConsultationAppointmentRequestCalendar.AppointmentServiceReference.IAppointmentRequest {
        
        public AppointmentRequestClient() {
        }
        
        public AppointmentRequestClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public AppointmentRequestClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AppointmentRequestClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AppointmentRequestClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public ConsultationAppointmentRequestCalendar.AppointmentServiceReference.PhysicianEntity[] GetPhysicians() {
            return base.Channel.GetPhysicians();
        }
        
        public System.Threading.Tasks.Task<ConsultationAppointmentRequestCalendar.AppointmentServiceReference.PhysicianEntity[]> GetPhysiciansAsync() {
            return base.Channel.GetPhysiciansAsync();
        }
        
        public ConsultationAppointmentRequestCalendar.AppointmentServiceReference.PhysicianEntity GetPhysician(int physicianId) {
            return base.Channel.GetPhysician(physicianId);
        }
        
        public System.Threading.Tasks.Task<ConsultationAppointmentRequestCalendar.AppointmentServiceReference.PhysicianEntity> GetPhysicianAsync(int physicianId) {
            return base.Channel.GetPhysicianAsync(physicianId);
        }
        
        public ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity[] GetAppointmentList() {
            return base.Channel.GetAppointmentList();
        }
        
        public System.Threading.Tasks.Task<ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity[]> GetAppointmentListAsync() {
            return base.Channel.GetAppointmentListAsync();
        }
        
        public ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity SetAppointment(int physicianId) {
            return base.Channel.SetAppointment(physicianId);
        }
        
        public System.Threading.Tasks.Task<ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity> SetAppointmentAsync(int physicianId) {
            return base.Channel.SetAppointmentAsync(physicianId);
        }
        
        public ConsultationAppointmentRequestCalendar.AppointmentServiceReference.PatientEntity[] GetPatientList() {
            return base.Channel.GetPatientList();
        }
        
        public System.Threading.Tasks.Task<ConsultationAppointmentRequestCalendar.AppointmentServiceReference.PatientEntity[]> GetPatientListAsync() {
            return base.Channel.GetPatientListAsync();
        }
        
        public bool SaveAppointment(ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity appointmentRequest) {
            return base.Channel.SaveAppointment(appointmentRequest);
        }
        
        public System.Threading.Tasks.Task<bool> SaveAppointmentAsync(ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity appointmentRequest) {
            return base.Channel.SaveAppointmentAsync(appointmentRequest);
        }
        
        public bool UpdateAppointment(ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity updatedRequest) {
            return base.Channel.UpdateAppointment(updatedRequest);
        }
        
        public System.Threading.Tasks.Task<bool> UpdateAppointmentAsync(ConsultationAppointmentRequestCalendar.AppointmentServiceReference.AppointmentEntity updatedRequest) {
            return base.Channel.UpdateAppointmentAsync(updatedRequest);
        }
        
        public bool DeleteAppointment(int appointmentId) {
            return base.Channel.DeleteAppointment(appointmentId);
        }
        
        public System.Threading.Tasks.Task<bool> DeleteAppointmentAsync(int appointmentId) {
            return base.Channel.DeleteAppointmentAsync(appointmentId);
        }
    }
}
