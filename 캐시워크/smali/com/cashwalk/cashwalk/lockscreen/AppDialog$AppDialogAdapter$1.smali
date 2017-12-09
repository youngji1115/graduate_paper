.class Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$1;
.super Ljava/lang/Object;
.source "AppDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;-><init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

.field final synthetic val$this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$1;->val$this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 2
    .param p1, "a1"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "a2"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->access$600(Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;->access$600(Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 134
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter$1;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
