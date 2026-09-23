.class public final Lcom/mycompany/app/web/TabLongPressGate;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnTouchListener;
.source "TabLongPressGate.java"

.field private final static INSTANCE:Lcom/mycompany/app/web/TabLongPressGate;

.field private activity:Lcom/mycompany/app/web/WebViewActivity;

.field private adapterPos:I

.field private anchor:Landroid/view/View;

.field private armed:Z

.field private downRawX:F

.field private downRawY:F

.field private groupTab:Z

.field private holder:Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;

.field private originSet:Z

.field private tabIndex:I

.field private touchSlop:I

.method static constructor <clinit>()V
  .registers 1
  .line 14
    new-instance v0, Lcom/mycompany/app/web/TabLongPressGate;
    invoke-direct { v0 }, Lcom/mycompany/app/web/TabLongPressGate;-><init>()V
    sput-object v0, Lcom/mycompany/app/web/TabLongPressGate;->INSTANCE:Lcom/mycompany/app/web/TabLongPressGate;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 28
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static allowIntercept(Landroid/view/View;)V
  .registers 2
    if-nez p0, :L0
    return-void
  :L0
  .line 167
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p0
    if-eqz p0, :L1
    const/4 v0, 0
  .line 169
    invoke-interface { p0, v0 }, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
  :L1
    return-void
.end method

.method public static arm(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;Landroid/view/View;IIZ)V
  .registers 9
    if-eqz p0, :L3
    if-eqz p1, :L3
    if-nez p2, :L0
    goto :L3
  :L0
  .line 45
    sget-object v0, Lcom/mycompany/app/web/TabLongPressGate;->INSTANCE:Lcom/mycompany/app/web/TabLongPressGate;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Lcom/mycompany/app/web/TabLongPressGate;->clear(Z)V
  .line 46
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity;->Y5:Lcom/mycompany/app/dialog/DialogTabPress;
    if-eqz v2, :L1
  .line 47
    invoke-virtual { p0 }, Lcom/mycompany/app/web/WebViewActivity;->W4()V
  :L1
  .line 50
    iput-object p0, v0, Lcom/mycompany/app/web/TabLongPressGate;->activity:Lcom/mycompany/app/web/WebViewActivity;
  .line 51
    iput-object p1, v0, Lcom/mycompany/app/web/TabLongPressGate;->holder:Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;
  .line 52
    iput-object p2, v0, Lcom/mycompany/app/web/TabLongPressGate;->anchor:Landroid/view/View;
  .line 53
    iput p3, v0, Lcom/mycompany/app/web/TabLongPressGate;->tabIndex:I
  .line 54
    iput p4, v0, Lcom/mycompany/app/web/TabLongPressGate;->adapterPos:I
  .line 55
    iput-boolean p5, v0, Lcom/mycompany/app/web/TabLongPressGate;->groupTab:Z
  .line 56
    iput-boolean v1, v0, Lcom/mycompany/app/web/TabLongPressGate;->armed:Z
    const/4 p0, 0
  .line 57
    iput-boolean p0, v0, Lcom/mycompany/app/web/TabLongPressGate;->originSet:Z
  .line 58
    invoke-virtual { p2 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object p0
    invoke-static { p0 }, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
    move-result p0
    iput p0, v0, Lcom/mycompany/app/web/TabLongPressGate;->touchSlop:I
  .line 60
    invoke-virtual { p2 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p0
    if-eqz p0, :L2
  .line 62
    invoke-interface { p0, v1 }, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
  :L2
  .line 64
    invoke-virtual { p2, v0 }, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
  :L3
    return-void
.end method

.method public static cancel()V
  .registers 2
  .line 32
    sget-object v0, Lcom/mycompany/app/web/TabLongPressGate;->INSTANCE:Lcom/mycompany/app/web/TabLongPressGate;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Lcom/mycompany/app/web/TabLongPressGate;->clear(Z)V
    return-void
.end method

.method private clear(Z)V
  .registers 4
  .line 143
    iget-object v0, p0, Lcom/mycompany/app/web/TabLongPressGate;->anchor:Landroid/view/View;
    const/4 v1, 0
  .line 144
    iput-boolean v1, p0, Lcom/mycompany/app/web/TabLongPressGate;->armed:Z
  .line 145
    iput-boolean v1, p0, Lcom/mycompany/app/web/TabLongPressGate;->originSet:Z
    const/4 v1, 0
  .line 146
    iput-object v1, p0, Lcom/mycompany/app/web/TabLongPressGate;->activity:Lcom/mycompany/app/web/WebViewActivity;
  .line 147
    iput-object v1, p0, Lcom/mycompany/app/web/TabLongPressGate;->holder:Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;
  .line 148
    iput-object v1, p0, Lcom/mycompany/app/web/TabLongPressGate;->anchor:Landroid/view/View;
    if-eqz v0, :L0
  .line 150
    invoke-static { v0 }, Lcom/mycompany/app/web/TabLongPressGate;->clearListener(Landroid/view/View;)V
    if-eqz p1, :L0
  .line 152
    invoke-static { v0 }, Lcom/mycompany/app/web/TabLongPressGate;->allowIntercept(Landroid/view/View;)V
  :L0
    return-void
.end method

.method private static clearListener(Landroid/view/View;)V
  .registers 2
    if-eqz p0, :L0
    const/4 v0, 0
  .line 159
    invoke-virtual { p0, v0 }, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
  :L0
    return-void
.end method

.method private openMenu(Landroid/view/View;)V
  .registers 7
  .line 127
    iget-object v0, p0, Lcom/mycompany/app/web/TabLongPressGate;->activity:Lcom/mycompany/app/web/WebViewActivity;
  .line 128
    iget-object v1, p0, Lcom/mycompany/app/web/TabLongPressGate;->anchor:Landroid/view/View;
    if-eqz v1, :L0
    goto :L1
  :L0
    move-object v1, p1
  :L1
  .line 129
    iget v2, p0, Lcom/mycompany/app/web/TabLongPressGate;->tabIndex:I
  .line 130
    iget-boolean v3, p0, Lcom/mycompany/app/web/TabLongPressGate;->groupTab:Z
    const/4 v4, 0
  .line 131
    iput-boolean v4, p0, Lcom/mycompany/app/web/TabLongPressGate;->armed:Z
  .line 132
    invoke-static { p1 }, Lcom/mycompany/app/web/TabLongPressGate;->clearListener(Landroid/view/View;)V
  .line 133
    invoke-static { p1 }, Lcom/mycompany/app/web/TabLongPressGate;->allowIntercept(Landroid/view/View;)V
    const/4 p1, 0
  .line 134
    iput-object p1, p0, Lcom/mycompany/app/web/TabLongPressGate;->activity:Lcom/mycompany/app/web/WebViewActivity;
  .line 135
    iput-object p1, p0, Lcom/mycompany/app/web/TabLongPressGate;->holder:Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;
  .line 136
    iput-object p1, p0, Lcom/mycompany/app/web/TabLongPressGate;->anchor:Landroid/view/View;
    if-eqz v0, :L2
    const/4 p1, -1
  .line 138
    invoke-static { v0, v1, p1, v2, v3 }, Lcom/mycompany/app/web/WebViewActivity;->D1(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;IIZ)V
  :L2
    return-void
.end method

.method private startDrag(Landroid/view/View;)V
  .registers 6
  .line 105
    iget-object v0, p0, Lcom/mycompany/app/web/TabLongPressGate;->activity:Lcom/mycompany/app/web/WebViewActivity;
  .line 106
    iget-object v1, p0, Lcom/mycompany/app/web/TabLongPressGate;->holder:Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;
  .line 107
    iget v2, p0, Lcom/mycompany/app/web/TabLongPressGate;->adapterPos:I
    const/4 v3, 0
  .line 108
    iput-boolean v3, p0, Lcom/mycompany/app/web/TabLongPressGate;->armed:Z
  .line 109
    invoke-static { p1 }, Lcom/mycompany/app/web/TabLongPressGate;->clearListener(Landroid/view/View;)V
  .line 110
    invoke-static { p1 }, Lcom/mycompany/app/web/TabLongPressGate;->allowIntercept(Landroid/view/View;)V
    const/4 p1, 0
  .line 111
    iput-object p1, p0, Lcom/mycompany/app/web/TabLongPressGate;->activity:Lcom/mycompany/app/web/WebViewActivity;
  .line 112
    iput-object p1, p0, Lcom/mycompany/app/web/TabLongPressGate;->holder:Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;
  .line 113
    iput-object p1, p0, Lcom/mycompany/app/web/TabLongPressGate;->anchor:Landroid/view/View;
    if-eqz v0, :L2
    if-nez v1, :L0
    goto :L2
  :L0
  .line 117
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->f3:Landroidx/recyclerview/widget/ItemTouchHelper;
    if-nez p1, :L1
    return-void
  :L1
  .line 121
    iput v2, v0, Lcom/mycompany/app/web/WebViewActivity;->h3:I
  .line 122
    iput v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i3:I
  .line 123
    invoke-virtual { p1, v1 }, Landroidx/recyclerview/widget/ItemTouchHelper;->t(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
  :L2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 7
  .line 69
    iget-boolean v0, p0, Lcom/mycompany/app/web/TabLongPressGate;->armed:Z
    const/4 v1, 0
    if-eqz v0, :L8
    iget-object v0, p0, Lcom/mycompany/app/web/TabLongPressGate;->anchor:Landroid/view/View;
    if-eq p1, v0, :L0
    goto :L8
  :L0
  .line 72
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v2, 2
    const/4 v3, 1
    if-ne v0, v2, :L3
  .line 74
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getRawX()F
    move-result v0
  .line 75
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getRawY()F
    move-result p2
  .line 76
    iget-boolean v1, p0, Lcom/mycompany/app/web/TabLongPressGate;->originSet:Z
    if-nez v1, :L1
  .line 77
    iput v0, p0, Lcom/mycompany/app/web/TabLongPressGate;->downRawX:F
  .line 78
    iput p2, p0, Lcom/mycompany/app/web/TabLongPressGate;->downRawY:F
  .line 79
    iput-boolean v3, p0, Lcom/mycompany/app/web/TabLongPressGate;->originSet:Z
    return v3
  :L1
  .line 82
    iget v1, p0, Lcom/mycompany/app/web/TabLongPressGate;->downRawX:F
    sub-float/2addr v0, v1
  .line 83
    iget v1, p0, Lcom/mycompany/app/web/TabLongPressGate;->downRawY:F
    sub-float/2addr p2, v1
    mul-float v0, v0, v0
    mul-float p2, p2, p2
    add-float/2addr v0, p2
  .line 84
    iget p2, p0, Lcom/mycompany/app/web/TabLongPressGate;->touchSlop:I
    mul-int p2, p2, p2
    int-to-float p2, p2
    cmpl-float p2, v0, p2
    if-lez p2, :L2
  .line 85
    invoke-direct { p0, p1 }, Lcom/mycompany/app/web/TabLongPressGate;->startDrag(Landroid/view/View;)V
  :L2
    return v3
  :L3
    if-ne v0, v3, :L6
  .line 90
    iget-boolean p2, p0, Lcom/mycompany/app/web/TabLongPressGate;->armed:Z
    if-eqz p2, :L4
  .line 91
    invoke-direct { p0, p1 }, Lcom/mycompany/app/web/TabLongPressGate;->openMenu(Landroid/view/View;)V
    goto :L5
  :L4
  .line 93
    invoke-direct { p0, v1 }, Lcom/mycompany/app/web/TabLongPressGate;->clear(Z)V
  :L5
    return v3
  :L6
    const/4 p1, 3
    if-ne v0, p1, :L7
  .line 98
    invoke-direct { p0, v3 }, Lcom/mycompany/app/web/TabLongPressGate;->clear(Z)V
  :L7
    return v3
  :L8
    return v1
.end method
