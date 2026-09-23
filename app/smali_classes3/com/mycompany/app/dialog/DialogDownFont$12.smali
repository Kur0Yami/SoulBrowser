.class Lcom/mycompany/app/dialog/DialogDownFont$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownFont;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFont;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont$12;->c:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont$12;->c:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->x0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFont;->x0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownFont;->c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v4, v1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v3, v4, v2, v1, v2}, Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownFont;->v0:Z

    .line 23
    .line 24
    return-void
.end method
