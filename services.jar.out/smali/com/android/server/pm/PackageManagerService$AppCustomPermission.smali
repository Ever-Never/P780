.class Lcom/android/server/pm/PackageManagerService$AppCustomPermission;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCustomPermission"
.end annotation


# instance fields
.field enable_access_network:Z

.field enable_access_wifi:Z

.field enable_boot_complete:Z

.field enable_call:Z

.field enable_change_network:Z

.field enable_change_wifi:Z

.field enable_internet:Z

.field enable_internet_gprs:Z

.field enable_internet_wifi:Z

.field enable_location_sevice:Z

.field enable_read_call_log:Z

.field enable_read_contacts:Z

.field enable_read_sms:Z

.field enable_send_sms:Z

.field enable_write_contacts:Z

.field strPackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 10810
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10794
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_boot_complete:Z

    .line 10795
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet_wifi:Z

    .line 10796
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet_gprs:Z

    .line 10797
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet:Z

    .line 10798
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_access_wifi:Z

    .line 10799
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_change_wifi:Z

    .line 10800
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_access_network:Z

    .line 10801
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_change_network:Z

    .line 10802
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_call:Z

    .line 10803
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_send_sms:Z

    .line 10804
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_sms:Z

    .line 10805
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_contacts:Z

    .line 10806
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_write_contacts:Z

    .line 10807
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_location_sevice:Z

    .line 10808
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_call_log:Z

    .line 10811
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->strPackage:Ljava/lang/String;

    .line 10812
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->uid:I

    .line 10813
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_boot_complete:Z

    .line 10814
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet_wifi:Z

    .line 10815
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet_gprs:Z

    .line 10816
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet:Z

    .line 10817
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_access_wifi:Z

    .line 10818
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_change_wifi:Z

    .line 10819
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_access_network:Z

    .line 10820
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_change_network:Z

    .line 10821
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_call:Z

    .line 10822
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_send_sms:Z

    .line 10823
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_sms:Z

    .line 10824
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_contacts:Z

    .line 10825
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_write_contacts:Z

    .line 10826
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_location_sevice:Z

    .line 10827
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_call_log:Z

    .line 10828
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$AppCustomPermission;)V
    .locals 1
    .parameter
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    .line 10830
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10794
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_boot_complete:Z

    .line 10795
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet_wifi:Z

    .line 10796
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet_gprs:Z

    .line 10797
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet:Z

    .line 10798
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_access_wifi:Z

    .line 10799
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_change_wifi:Z

    .line 10800
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_access_network:Z

    .line 10801
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_change_network:Z

    .line 10802
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_call:Z

    .line 10803
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_send_sms:Z

    .line 10804
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_sms:Z

    .line 10805
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_contacts:Z

    .line 10806
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_write_contacts:Z

    .line 10807
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_location_sevice:Z

    .line 10808
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_call_log:Z

    .line 10831
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->strPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->strPackage:Ljava/lang/String;

    .line 10832
    iget v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->uid:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->uid:I

    .line 10833
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_boot_complete:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_boot_complete:Z

    .line 10834
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet_wifi:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet_wifi:Z

    .line 10835
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet_gprs:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet_gprs:Z

    .line 10836
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_internet:Z

    .line 10837
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_access_wifi:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_access_wifi:Z

    .line 10838
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_change_wifi:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_change_wifi:Z

    .line 10839
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_access_network:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_access_network:Z

    .line 10840
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_change_network:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_change_network:Z

    .line 10841
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_call:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_call:Z

    .line 10842
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_send_sms:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_send_sms:Z

    .line 10843
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_sms:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_sms:Z

    .line 10844
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_contacts:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_contacts:Z

    .line 10845
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_write_contacts:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_write_contacts:Z

    .line 10846
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_location_sevice:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_location_sevice:Z

    .line 10847
    iget-boolean v0, p2, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_call_log:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$AppCustomPermission;->enable_read_call_log:Z

    .line 10848
    return-void
.end method
