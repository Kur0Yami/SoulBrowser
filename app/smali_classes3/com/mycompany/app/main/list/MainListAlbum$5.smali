.class Lcom/mycompany/app/main/list/MainListAlbum$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/list/MainListAlbum;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListAlbum;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListAlbum$5;->a:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum$5;->a:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/mycompany/app/main/MainListView;->d0(ZIZZ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
