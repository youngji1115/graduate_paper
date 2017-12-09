.class final Lcom/tnkfactory/ad/ig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tnkfactory/ad/TnkAdListener;

.field final synthetic d:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;J)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/ig;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tnkfactory/ad/ig;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tnkfactory/ad/ig;->c:Lcom/tnkfactory/ad/TnkAdListener;

    iput-wide p4, p0, Lcom/tnkfactory/ad/ig;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/tnkfactory/ad/ig;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ig;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/ia;->b(Landroid/content/Context;)Lcom/tnkfactory/ad/fo;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ig;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tnkfactory/ad/ig;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tnkfactory/ad/ig;->c:Lcom/tnkfactory/ad/TnkAdListener;

    iget-wide v4, p0, Lcom/tnkfactory/ad/ig;->d:J

    invoke-virtual/range {v0 .. v5}, Lcom/tnkfactory/ad/fo;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;J)V

    return-void
.end method
