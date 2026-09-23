.class public Landroidx/webkit/internal/WebStorageAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebStorageBoundaryInterface;


# instance fields
.field public final a:Lorg/chromium/support_lib_boundary/WebStorageBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebStorageBoundaryInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/WebStorageAdapter;->a:Lorg/chromium/support_lib_boundary/WebStorageBoundaryInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final deleteBrowsingData(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebStorageAdapter;->a:Lorg/chromium/support_lib_boundary/WebStorageBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/chromium/support_lib_boundary/WebStorageBoundaryInterface;->deleteBrowsingData(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final deleteBrowsingDataForSite(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebStorageAdapter;->a:Lorg/chromium/support_lib_boundary/WebStorageBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/support_lib_boundary/WebStorageBoundaryInterface;->deleteBrowsingDataForSite(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
