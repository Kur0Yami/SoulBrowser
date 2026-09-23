.class Lcom/mycompany/app/view/MyPlayerView$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyPlayerView$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPlayerView$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView$1$1$1;->c:Lcom/mycompany/app/view/MyPlayerView$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView$1$1$1;->c:Lcom/mycompany/app/view/MyPlayerView$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyPlayerView$1$1;->c:Lcom/mycompany/app/view/MyPlayerView$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/view/MyPlayerView$1;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->h:Landroid/net/Uri;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/view/MyPlayerView;->i:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/mycompany/app/view/MyPlayerView;->j:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/view/MyPlayerView;->c(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
