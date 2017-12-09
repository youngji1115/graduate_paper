.class Lcom/tnkfactory/ad/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/AdLayout$OnCompleteListener;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/cl;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/cl;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/cm;->a:Lcom/tnkfactory/ad/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/cm;->a:Lcom/tnkfactory/ad/cl;

    iget-object v0, v0, Lcom/tnkfactory/ad/cl;->a:Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdMediaActivity;->finish()V

    return-void
.end method
