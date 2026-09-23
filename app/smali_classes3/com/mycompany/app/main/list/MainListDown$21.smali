.class Lcom/mycompany/app/main/list/MainListDown$21;
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
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$21;->c:Lcom/mycompany/app/main/list/MainListDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$21;->c:Lcom/mycompany/app/main/list/MainListDown;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/list/MainListDown;->M1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/main/list/MainListDown;->M1:Z

    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/main/MainListView;->U(ZZ)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

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
    invoke-virtual {v1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 28
    .line 29
    .line 30
    iget v1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 31
    .line 32
    const/16 v2, 0x20

    .line 33
    .line 34
    if-ne v1, v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->m()V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method
