.class Lcom/mycompany/app/dialog/DialogSetAddr$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/AddrIconAdapter$AddrListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetAddr;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetAddr$4;->a:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr$4;->a:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->r0:Z

    .line 4
    .line 5
    if-nez v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->n0:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    iget v3, v1, Lcom/mycompany/app/main/AddrIconAdapter;->d:I

    .line 17
    .line 18
    if-lt p1, v3, :cond_4

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-lt p1, v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v2, v1, Lcom/mycompany/app/main/AddrIconAdapter;->h:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v2, v1, Lcom/mycompany/app/main/AddrIconAdapter;->h:Ljava/util/ArrayList;

    .line 48
    .line 49
    :cond_3
    iget-object v2, v1, Lcom/mycompany/app/main/AddrIconAdapter;->h:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetAddr;->D()V

    .line 58
    .line 59
    .line 60
    :cond_5
    :goto_1
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr$4;->a:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->r0:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->n0:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->q0:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->t(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method
