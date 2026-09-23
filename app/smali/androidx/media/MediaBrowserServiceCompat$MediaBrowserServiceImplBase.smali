.class Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaBrowserServiceImplBase"
.end annotation


# virtual methods
.method public final onCreate()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Messenger;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    throw v0
.end method
