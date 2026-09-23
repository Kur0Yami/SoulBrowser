.class Lcom/mycompany/app/main/MainListView$93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$93;->a:Lcom/mycompany/app/main/MainListView;

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
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView$93;->a:Lcom/mycompany/app/main/MainListView;

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

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$93;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->y1:Lcom/mycompany/app/main/MainListView$DcChangeListener;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView;->D1:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1, v2}, Lcom/mycompany/app/main/MainListView$DcChangeListener;->c(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v2, 0x2a

    .line 20
    .line 21
    if-ne v1, v2, :cond_2

    .line 22
    .line 23
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListListener;->j()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void

    .line 31
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListView;->D0:Z

    .line 33
    .line 34
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainListView;->c1:Z

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/main/MainListView;->S(ZZ)V

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->N()V

    .line 43
    .line 44
    .line 45
    return-void
.end method
