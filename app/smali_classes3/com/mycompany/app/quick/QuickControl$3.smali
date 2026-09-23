.class Lcom/mycompany/app/quick/QuickControl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickControl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickControl$3;->c:Lcom/mycompany/app/quick/QuickControl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl$3;->c:Lcom/mycompany/app/quick/QuickControl;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickControl;->s:Lcom/mycompany/app/quick/QuickView;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickView;->q:Lcom/mycompany/app/quick/QuickControl;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdapter;->K()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    xor-int/2addr v1, v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/quick/QuickAdapter;->Q(ZZ)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickView;->q:Lcom/mycompany/app/quick/QuickControl;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickAdapter;->A()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/mycompany/app/quick/QuickAdapter;->D()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {v0, v1, p1}, Lcom/mycompany/app/quick/QuickControl;->c(II)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method
