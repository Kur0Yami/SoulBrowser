.class Lcom/mycompany/app/view/MyAddrView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyAddrView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyAddrView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyAddrView$2;->c:Lcom/mycompany/app/view/MyAddrView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyAddrView$2;->c:Lcom/mycompany/app/view/MyAddrView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->f:[I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    instance-of v2, v1, Ljava/lang/Integer;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, -0x1

    .line 26
    :goto_0
    if-ltz v1, :cond_3

    .line 27
    .line 28
    iget-object v2, v0, Lcom/mycompany/app/view/MyAddrView;->f:[I

    .line 29
    .line 30
    array-length v3, v2

    .line 31
    if-lt v1, v3, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/view/MyAddrView;->c:Lcom/mycompany/app/view/MyBarView$BarListener;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    aget v1, v2, v1

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-interface {v0, v1, p1, v2}, Lcom/mycompany/app/view/MyBarView$BarListener;->a(ILandroid/view/View;Z)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_1
    return-void
.end method
