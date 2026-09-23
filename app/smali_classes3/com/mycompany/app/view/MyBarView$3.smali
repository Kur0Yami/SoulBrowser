.class Lcom/mycompany/app/view/MyBarView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyBarView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyBarView$3;->c:Lcom/mycompany/app/view/MyBarView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarView$3;->c:Lcom/mycompany/app/view/MyBarView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyBarView;->h:[I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    instance-of v3, v1, Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, -0x1

    .line 27
    :goto_0
    if-ltz v1, :cond_3

    .line 28
    .line 29
    iget-object v3, v0, Lcom/mycompany/app/view/MyBarView;->h:[I

    .line 30
    .line 31
    array-length v4, v3

    .line 32
    if-lt v1, v4, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/view/MyBarView;->f:Lcom/mycompany/app/view/MyBarView$BarListener;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    aget v1, v3, v1

    .line 40
    .line 41
    invoke-interface {v0, v1, p1, v2}, Lcom/mycompany/app/view/MyBarView$BarListener;->a(ILandroid/view/View;Z)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_1
    return v2
.end method
