.class public Lcom/esafirm/imagepicker/model/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:J

.field private isSelected:Z

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/esafirm/imagepicker/model/Image$1;

    invoke-direct {v0}, Lcom/esafirm/imagepicker/model/Image$1;-><init>()V

    sput-object v0, Lcom/esafirm/imagepicker/model/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "isSelected"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/esafirm/imagepicker/model/Image;->id:J

    .line 15
    iput-object p3, p0, Lcom/esafirm/imagepicker/model/Image;->name:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/esafirm/imagepicker/model/Image;->path:Ljava/lang/String;

    .line 17
    iput-boolean p5, p0, Lcom/esafirm/imagepicker/model/Image;->isSelected:Z

    .line 18
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esafirm/imagepicker/model/Image;->id:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/model/Image;->name:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/model/Image;->path:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/esafirm/imagepicker/model/Image;->isSelected:Z

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/esafirm/imagepicker/model/Image;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/esafirm/imagepicker/model/Image;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/esafirm/imagepicker/model/Image;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/model/Image;->isSelected:Z

    return v0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/esafirm/imagepicker/model/Image;->id:J

    .line 26
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/esafirm/imagepicker/model/Image;->name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/esafirm/imagepicker/model/Image;->path:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/esafirm/imagepicker/model/Image;->isSelected:Z

    .line 50
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/esafirm/imagepicker/model/Image;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget-object v0, p0, Lcom/esafirm/imagepicker/model/Image;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/esafirm/imagepicker/model/Image;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/model/Image;->isSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
