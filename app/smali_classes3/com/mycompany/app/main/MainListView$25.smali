.class Lcom/mycompany/app/main/MainListView$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$25;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$25;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->c0:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->d0:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 17
    .line 18
    const/16 v2, 0x1b

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListAdapter;->j()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, p1, v1, v1}, Lcom/mycompany/app/main/MainListView;->w0(Ljava/util/List;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListAdapter;->j()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v3, 0x0

    .line 36
    const-wide/16 v4, -0x1

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainListView;->j(Lcom/mycompany/app/main/MainListView;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :goto_0
    const/4 p1, -0x1

    .line 43
    const/4 v0, 0x1

    .line 44
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView$25;->c:Lcom/mycompany/app/main/MainListView;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v1, v2, p1, v2, v0}, Lcom/mycompany/app/main/MainListView;->d0(ZIZZ)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    return-void
.end method
