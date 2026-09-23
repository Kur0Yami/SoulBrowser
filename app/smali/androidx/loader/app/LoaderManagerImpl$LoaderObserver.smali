.class Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

.field public b:Z


# direct methods
.method public constructor <init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->b:Z

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->a:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->a:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->a(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->a:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
