.class Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public image:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;->this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;Lcom/cashwalk/cashwalk/lockscreen/AppDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog$1;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$ViewHolder;-><init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;)V

    return-void
.end method
