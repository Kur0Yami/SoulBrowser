.class Lcom/mycompany/app/dialog/DialogTabMini$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$35;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$35;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->o1:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->c0:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMini;->M()V

    .line 11
    .line 12
    .line 13
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogTabMini;->G(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 25
    .line 26
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 27
    .line 28
    if-ne v1, v2, :cond_2

    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini;->c0:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;->e()V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method
