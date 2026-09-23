.class Lcom/mycompany/app/main/MainListView$89;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogFileDelete$FileDeleteListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$89;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView$89;->a:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3, v0, v3, v1}, Lcom/mycompany/app/main/MainListView;->d0(ZIZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView$89;->a:Lcom/mycompany/app/main/MainListView;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainListView;->y0:Z

    .line 8
    .line 9
    iget-boolean p1, v1, Lcom/mycompany/app/main/MainListView;->c1:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/main/MainListView;->S(ZZ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, v1, Lcom/mycompany/app/main/MainListView;->g0:Lcom/mycompany/app/list/ListTask;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainListView;->m0:Z

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0, v2}, Lcom/mycompany/app/list/ListTask;->h(Ljava/util/List;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
