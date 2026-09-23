.class Lcom/mycompany/app/dialog/DialogSetAddr$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetAddr;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetAddr$3;->c:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr$3;->c:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->n0:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v2, v1, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    iget-object v2, v1, Lcom/mycompany/app/main/AddrIconAdapter;->h:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    if-ltz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-lt p1, v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/main/AddrIconAdapter;->h:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v2, v1, Lcom/mycompany/app/main/AddrIconAdapter;->g:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetAddr;->D()V

    .line 55
    .line 56
    .line 57
    return-void
.end method
