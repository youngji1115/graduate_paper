.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;
.super Ljava/lang/Object;
.source "StepBetTimelineAddActivity.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->requestLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 521
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v1, p1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1902(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Landroid/location/Location;)Landroid/location/Location;

    .line 522
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;)V

    invoke-static {v2, v3, v4, v5, v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getAddress(DDLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 547
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 549
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13$2;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13$2;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 554
    return-void
.end method
