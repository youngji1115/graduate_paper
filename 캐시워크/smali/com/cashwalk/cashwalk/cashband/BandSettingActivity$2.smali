.class Lcom/cashwalk/cashwalk/cashband/BandSettingActivity$2;
.super Ljava/lang/Object;
.source "BandSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->selectDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;

    invoke-static {v0, p2}, Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;->access$102(Lcom/cashwalk/cashwalk/cashband/BandSettingActivity;I)I

    .line 193
    return-void
.end method
