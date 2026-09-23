.class Lcom/mycompany/app/main/list/MainListAgent$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListAgent$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListAgent$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListAgent$4$1;->c:Lcom/mycompany/app/main/list/MainListAgent$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAgent$4$1;->c:Lcom/mycompany/app/main/list/MainListAgent$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListAgent$4;->c:Lcom/mycompany/app/main/list/MainListAgent;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAgent;->H1:Lcom/mycompany/app/main/MainListView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-ge v1, v2, :cond_3

    .line 14
    .line 15
    iget-object v2, v0, Lcom/mycompany/app/main/list/MainListAgent;->G1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 16
    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    iget-object v3, v2, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iput v1, v2, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    iput-boolean v4, v3, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->i:Z

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListAgent;->H1:Lcom/mycompany/app/main/MainListView;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListView;->M(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
