.class public Lcom/tnkfactory/ad/TnkAdInterstitialStyle;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public closeButtonAlignRight:Z

.field public closeButtonAlignTop:Z

.field public closeButtonHeightScale:F

.field public closeButtonWidthScale:F

.field public closeTitleLabel:Ljava/lang/String;

.field public leftButtonLabel:Ljava/lang/String;

.field public rightButtonLabel:Ljava/lang/String;

.field public showTnkLogo:Z

.field public useWindowMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/hx;

    invoke-direct {v0}, Lcom/tnkfactory/ad/hx;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->leftButtonLabel:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->rightButtonLabel:Ljava/lang/String;

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonWidthScale:F

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonHeightScale:F

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignTop:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignRight:Z

    iput-boolean v3, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->useWindowMode:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->showTnkLogo:Z

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeTitleLabel:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->leftButtonLabel:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->rightButtonLabel:Ljava/lang/String;

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonWidthScale:F

    iput v2, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonHeightScale:F

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignTop:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignRight:Z

    iput-boolean v3, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->useWindowMode:Z

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->showTnkLogo:Z

    iput-object v1, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeTitleLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->leftButtonLabel:Ljava/lang/String;

    iput-object v2, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->rightButtonLabel:Ljava/lang/String;

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonWidthScale:F

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonHeightScale:F

    iput-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignTop:Z

    iput-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignRight:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->useWindowMode:Z

    iput-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->showTnkLogo:Z

    iput-object v2, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeTitleLabel:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->a(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->leftButtonLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->rightButtonLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeTitleLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonWidthScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonHeightScale:F

    new-array v0, v2, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignTop:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignRight:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->useWindowMode:Z

    aget-boolean v0, v0, v2

    iput-boolean v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->showTnkLogo:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->leftButtonLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->rightButtonLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeTitleLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonWidthScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonHeightScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 v0, 0x4

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignTop:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->closeButtonAlignRight:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->useWindowMode:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->showTnkLogo:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
