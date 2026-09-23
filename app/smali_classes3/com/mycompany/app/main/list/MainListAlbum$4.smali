.class Lcom/mycompany/app/main/list/MainListAlbum$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListAlbum;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListAlbum;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListAlbum$4;->c:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum$4;->c:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListView;->I()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    new-instance v1, Lcom/mycompany/app/main/list/MainListAlbum$4$1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/list/MainListAlbum$4$1;-><init>(Lcom/mycompany/app/main/list/MainListAlbum$4;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
