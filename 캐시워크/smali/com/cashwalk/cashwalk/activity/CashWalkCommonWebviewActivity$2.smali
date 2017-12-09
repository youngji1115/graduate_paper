.class Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$2;
.super Ljava/lang/Object;
.source "CashWalkCommonWebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 145
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->access$202(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;F)F

    goto :goto_1

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;->access$200(Lcom/cashwalk/cashwalk/activity/CashWalkCommonWebviewActivity;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
