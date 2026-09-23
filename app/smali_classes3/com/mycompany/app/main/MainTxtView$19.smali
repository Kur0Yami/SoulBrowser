.class Lcom/mycompany/app/main/MainTxtView$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$19;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/main/MainTxtView;->X2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView$19;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainTxtView;->G0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainTxtView;->N0()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 19
    .line 20
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 28
    .line 29
    const/16 v1, -0x4d2

    .line 30
    .line 31
    iput v1, p1, Lcom/mycompany/app/main/MainTxtView;->B2:I

    .line 32
    .line 33
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainTxtView;->C2:Z

    .line 34
    .line 35
    iget v0, p1, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainTxtView;->c1()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainTxtView;->O0(Z)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainTxtView;->K0()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
