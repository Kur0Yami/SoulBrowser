.class Lcom/mycompany/app/dialog/DialogCreateAlbum$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCreateAlbum;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$22;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$22;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->i1:Lcom/mycompany/app/dialog/DialogCreateAlbum$ZipTask;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
