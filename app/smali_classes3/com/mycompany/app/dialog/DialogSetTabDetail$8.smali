.class Lcom/mycompany/app/dialog/DialogSetTabDetail$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabDetail;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$8;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$8;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->B0:Lcom/mycompany/app/view/MySwitchView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->S0:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    xor-int/2addr v1, v2

    .line 12
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->S0:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->S0:Z

    .line 22
    .line 23
    iput-boolean p1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->s:Z

    .line 24
    .line 25
    iget-object p1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    return-void
.end method
