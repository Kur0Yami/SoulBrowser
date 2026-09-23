.class Lcom/mycompany/app/main/MainTxtView$10;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$10;->a:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtView$10;->a:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-lez p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p1, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyRecyclerView;->w0()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyRecyclerView;->r0()V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, p1, Lcom/mycompany/app/main/MainTxtView;->U2:Ljava/lang/Runnable;

    .line 26
    .line 27
    iget-object p3, p1, Lcom/mycompany/app/main/MainTxtView;->M1:Lcom/mycompany/app/view/MyScrollBar;

    .line 28
    .line 29
    if-eqz p3, :cond_4

    .line 30
    .line 31
    iget-object v0, p1, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainTxtView;->T2:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainTxtView;->T2:Z

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Lcom/mycompany/app/main/MainTxtView;->M1:Lcom/mycompany/app/view/MyScrollBar;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_1
    return-void
.end method
