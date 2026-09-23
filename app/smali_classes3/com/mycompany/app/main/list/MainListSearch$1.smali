.class Lcom/mycompany/app/main/list/MainListSearch$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch$1;->c:Lcom/mycompany/app/main/list/MainListSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch$1;->c:Lcom/mycompany/app/main/list/MainListSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/list/MainListSearch;->F0()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    sget v2, Lnet/kaki87/soul2/testing/R$string;->search_engine:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 19
    .line 20
    new-instance v2, Lcom/mycompany/app/main/list/MainListSearch$2;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListSearch$2;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    new-instance v2, Lcom/mycompany/app/main/list/MainListSearch$3;

    .line 31
    .line 32
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListSearch$3;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 39
    .line 40
    new-instance v2, Lcom/mycompany/app/main/list/MainListSearch$4;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListSearch$4;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->J1:Lcom/mycompany/app/view/MyLineText;

    .line 49
    .line 50
    new-instance v2, Lcom/mycompany/app/main/list/MainListSearch$5;

    .line 51
    .line 52
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListSearch$5;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    new-instance v2, Lcom/mycompany/app/main/list/MainListSearch$6;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListSearch$6;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :cond_1
    new-instance v2, Lcom/mycompany/app/main/list/MainListSearch$7;

    .line 74
    .line 75
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListSearch$7;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method
