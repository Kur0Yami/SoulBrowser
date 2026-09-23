.class Lcom/mycompany/app/dialog/DialogTabMini$37$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini$37$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$37$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$37$1$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$37$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$37$1$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$37$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$37$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$37;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$37;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini;->x0:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 12
    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 23
    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    if-ltz v1, :cond_5

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-lt v1, v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini;->w0:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->m:Lcom/mycompany/app/web/WebTabAdapter;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 49
    .line 50
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    if-ltz v1, :cond_5

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-lt v1, v2, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 64
    .line 65
    .line 66
    :cond_5
    :goto_0
    return-void
.end method
