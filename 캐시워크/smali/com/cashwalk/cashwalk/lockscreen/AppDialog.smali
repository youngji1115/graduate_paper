.class public Lcom/cashwalk/cashwalk/lockscreen/AppDialog;
.super Landroid/app/Dialog;
.source "AppDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

.field private ctx:Landroid/content/Context;

.field private listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private progress:Landroid/widget/ProgressBar;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->ctx:Landroid/content/Context;

    .line 47
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 49
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->requestWindowFeature(I)Z

    .line 50
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 51
    .local v0, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 52
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 53
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 55
    const v1, 0x7f04007a

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->setContentView(I)V

    .line 57
    const v1, 0x7f100093

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->title:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f1001ba

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 59
    const v1, 0x7f1000d6

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->progress:Landroid/widget/ProgressBar;

    .line 61
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$1;

    invoke-direct {v2, p0, p2}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 87
    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->adapter:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;)Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->adapter:Lcom/cashwalk/cashwalk/lockscreen/AppDialog$AppDialogAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog;
    .param p1, "x1"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "x2"    # Landroid/os/Handler;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->writeAppToDB(Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method private writeAppToDB(Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 93
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;-><init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Landroid/os/Handler;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 114
    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method
