.class Lcom/cashwalk/cashwalk/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$1;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$1;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$002(Lcom/cashwalk/cashwalk/MainActivity;Z)Z

    .line 201
    return-void
.end method
