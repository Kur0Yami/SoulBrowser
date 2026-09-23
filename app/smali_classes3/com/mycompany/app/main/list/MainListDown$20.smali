.class Lcom/mycompany/app/main/list/MainListDown$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$20;->c:Lcom/mycompany/app/main/list/MainListDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$20;->c:Lcom/mycompany/app/main/list/MainListDown;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/list/MainListDown;->M1:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iput-boolean v2, v0, Lcom/mycompany/app/main/list/MainListDown;->M1:Z

    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {v0, v2, v2}, Lcom/mycompany/app/main/MainListView;->U(ZZ)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget v3, v1, Lcom/mycompany/app/main/MainListAdapter;->p:I

    .line 28
    .line 29
    const/4 v4, -0x1

    .line 30
    if-eq v3, v4, :cond_2

    .line 31
    .line 32
    iput v4, v0, Lcom/mycompany/app/main/MainListView;->k0:I

    .line 33
    .line 34
    iput v4, v0, Lcom/mycompany/app/main/MainListView;->l0:I

    .line 35
    .line 36
    iput v4, v1, Lcom/mycompany/app/main/MainListAdapter;->p:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainListView;->p(Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 44
    .line 45
    .line 46
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 47
    .line 48
    const/16 v2, 0x20

    .line 49
    .line 50
    if-ne v1, v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->m()V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    return-void
.end method
