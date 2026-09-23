.class Landroidx/webkit/ServiceWorkerControllerCompat$LAZY_HOLDER;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/ServiceWorkerControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LAZY_HOLDER"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/webkit/internal/ServiceWorkerControllerImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/webkit/internal/ServiceWorkerControllerImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
