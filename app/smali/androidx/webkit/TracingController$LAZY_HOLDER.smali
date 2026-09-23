.class Landroidx/webkit/TracingController$LAZY_HOLDER;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/TracingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LAZY_HOLDER"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/webkit/internal/TracingControllerImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/webkit/internal/TracingControllerImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
