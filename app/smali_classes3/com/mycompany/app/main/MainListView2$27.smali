.class Lcom/mycompany/app/main/MainListView2$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$27;->c:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$27;->c:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->z0:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->o:Lcom/mycompany/app/view/MyHeaderView;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->C()V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 27
    .line 28
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookSearch;->b:Ljava/util/List;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->z0:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    new-instance v2, Lcom/mycompany/app/main/MainListView2$28;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    new-instance v2, Lcom/mycompany/app/main/MainListView2$29;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainListView2$29;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    new-instance v2, Lcom/mycompany/app/main/MainListView2$30;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainListView2$30;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 61
    .line 62
    new-instance v2, Lcom/mycompany/app/main/MainListView2$31;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainListView2$31;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->g:Landroid/widget/RelativeLayout;

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    new-instance v2, Lcom/mycompany/app/main/MainListView2$32;

    .line 76
    .line 77
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainListView2$32;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 85
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListView2;->V0:Z

    .line 86
    .line 87
    return-void
.end method
