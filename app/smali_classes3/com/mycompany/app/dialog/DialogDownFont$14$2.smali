.class Lcom/mycompany/app/dialog/DialogDownFont$14$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownFont$14;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFont$14;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont$14$2;->c:Lcom/mycompany/app/dialog/DialogDownFont$14;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont$14$2;->c:Lcom/mycompany/app/dialog/DialogDownFont$14;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont$14;->a:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownFont;->A0:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownFont;->B0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownFont;->A0:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownFont;->B0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogDownFont;->c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v3, v3, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v1, v2, v3}, Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownFont$14;->a:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->v0:Z

    .line 29
    .line 30
    return-void
.end method
