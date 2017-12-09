.class Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "AlarmBroadcastReceiver.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver$1;->this$0:Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/cashwalk/cashwalk/model/BandInfo;)V
    .locals 3
    .param p1, "result"    # Lcom/cashwalk/cashwalk/model/BandInfo;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver$1;->this$0:Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->access$000(Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;)Lcom/cashwalk/cashwalk/util/BandDBHelper;

    move-result-object v0

    iget v1, p1, Lcom/cashwalk/cashwalk/model/BandInfo;->steps:I

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->insertStep(ILorg/joda/time/DateTime;)V

    .line 77
    return-void
.end method
