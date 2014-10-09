.class Landroid/view/VolumePanel$6;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;->initAudioProfile(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1606
    iput-object p1, p0, Landroid/view/VolumePanel$6;->this$0:Landroid/view/VolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 1611
    packed-switch p2, :pswitch_data_0

    .line 1629
    :goto_0
    iget-object v0, p0, Landroid/view/VolumePanel$6;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Landroid/view/VolumePanel;->access$200(Landroid/view/VolumePanel;)V

    .line 1631
    return-void

    .line 1614
    :pswitch_0
    iget-object v0, p0, Landroid/view/VolumePanel$6;->this$0:Landroid/view/VolumePanel;

    const-string v1, "mtk_audioprofile_general"

    #calls: Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1100(Landroid/view/VolumePanel;Ljava/lang/String;)V

    goto :goto_0

    .line 1617
    :pswitch_1
    iget-object v0, p0, Landroid/view/VolumePanel$6;->this$0:Landroid/view/VolumePanel;

    const-string v1, "mtk_audioprofile_silent"

    #calls: Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1100(Landroid/view/VolumePanel;Ljava/lang/String;)V

    goto :goto_0

    .line 1620
    :pswitch_2
    iget-object v0, p0, Landroid/view/VolumePanel$6;->this$0:Landroid/view/VolumePanel;

    const-string v1, "mtk_audioprofile_meeting"

    #calls: Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1100(Landroid/view/VolumePanel;Ljava/lang/String;)V

    goto :goto_0

    .line 1623
    :pswitch_3
    iget-object v0, p0, Landroid/view/VolumePanel$6;->this$0:Landroid/view/VolumePanel;

    const-string v1, "mtk_audioprofile_outdoor"

    #calls: Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1100(Landroid/view/VolumePanel;Ljava/lang/String;)V

    goto :goto_0

    .line 1611
    nop

    :pswitch_data_0
    .packed-switch 0x30c001b
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
