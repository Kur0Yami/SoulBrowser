.class public final Lcom/mycompany/app/web/TabListLongPressGate;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnTouchListener;
.source "TabListLongPressGate.java"

.field private final static INSTANCE:Lcom/mycompany/app/web/TabListLongPressGate;

.field private album:Z

.field private anchor:Landroid/view/View;

.field private armed:Z

.field private dialogMain:Lcom/mycompany/app/dialog/DialogTabMain;

.field private dialogMini:Lcom/mycompany/app/dialog/DialogTabMini;

.field private downRawX:F

.field private downRawY:F

.field private holder:Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

.field private index:I

.field private originSet:Z

.field private tabSub:Lcom/mycompany/app/quick/TabSubView;

.field private touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private touchSlop:I

.method static constructor <clinit>()V
  .registers 1
  .line 17
    new-instance v0, Lcom/mycompany/app/web/TabListLongPressGate;
    invoke-direct { v0 }, Lcom/mycompany/app/web/TabListLongPressGate;-><init>()V
    sput-object v0, Lcom/mycompany/app/web/TabListLongPressGate;->INSTANCE:Lcom/mycompany/app/web/TabListLongPressGate;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 33
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static allowIntercept(Landroid/view/View;)V
  .registers 2
    if-nez p0, :L0
    return-void
  :L0
  .line 216
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p0
    if-eqz p0, :L1
    const/4 v0, 0
  .line 218
    invoke-interface { p0, v0 }, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
  :L1
    return-void
.end method

.method public static anchorFor(Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;)Landroid/view/View;
  .registers 2
    if-nez p0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 110
    iget v0, p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->v:I
    if-nez v0, :L1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;
    if-eqz v0, :L1
  .line 111
    iget-object p0, p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->z:Lcom/mycompany/app/view/MyThumbView;
    return-object p0
  :L1
  .line 113
    iget-object p0, p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;->a:Landroid/view/View;
    return-object p0
.end method

.method private static arm(Landroid/view/View;Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;Landroidx/recyclerview/widget/ItemTouchHelper;IZLcom/mycompany/app/dialog/DialogTabMain;Lcom/mycompany/app/dialog/DialogTabMini;Lcom/mycompany/app/quick/TabSubView;)V
  .registers 10
    if-eqz p0, :L3
    if-nez p1, :L0
    goto :L3
  :L0
    if-nez p5, :L1
    if-nez p6, :L1
    if-nez p7, :L1
    return-void
  :L1
  .line 84
    sget-object v0, Lcom/mycompany/app/web/TabListLongPressGate;->INSTANCE:Lcom/mycompany/app/web/TabListLongPressGate;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Lcom/mycompany/app/web/TabListLongPressGate;->clear(Z)V
  .line 86
    iput-object p0, v0, Lcom/mycompany/app/web/TabListLongPressGate;->anchor:Landroid/view/View;
  .line 87
    iput-object p1, v0, Lcom/mycompany/app/web/TabListLongPressGate;->holder:Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;
  .line 88
    iput-object p2, v0, Lcom/mycompany/app/web/TabListLongPressGate;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;
  .line 89
    iput p3, v0, Lcom/mycompany/app/web/TabListLongPressGate;->index:I
  .line 90
    iput-boolean p4, v0, Lcom/mycompany/app/web/TabListLongPressGate;->album:Z
  .line 91
    iput-object p5, v0, Lcom/mycompany/app/web/TabListLongPressGate;->dialogMain:Lcom/mycompany/app/dialog/DialogTabMain;
  .line 92
    iput-object p6, v0, Lcom/mycompany/app/web/TabListLongPressGate;->dialogMini:Lcom/mycompany/app/dialog/DialogTabMini;
  .line 93
    iput-object p7, v0, Lcom/mycompany/app/web/TabListLongPressGate;->tabSub:Lcom/mycompany/app/quick/TabSubView;
  .line 94
    iput-boolean v1, v0, Lcom/mycompany/app/web/TabListLongPressGate;->armed:Z
    const/4 p1, 0
  .line 95
    iput-boolean p1, v0, Lcom/mycompany/app/web/TabListLongPressGate;->originSet:Z
  .line 96
    invoke-virtual { p0 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object p1
    invoke-static { p1 }, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
    move-result p1
    iput p1, v0, Lcom/mycompany/app/web/TabListLongPressGate;->touchSlop:I
  .line 98
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p1
    if-eqz p1, :L2
  .line 100
    invoke-interface { p1, v1 }, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
  :L2
  .line 102
    invoke-virtual { p0, v0 }, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
  :L3
    return-void
.end method

.method public static armMain(Lcom/mycompany/app/dialog/DialogTabMain;Landroid/view/View;Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;Landroidx/recyclerview/widget/ItemTouchHelper;IZ)V
  .registers 14
    const/4 v6, 0
    const/4 v7, 0
    move-object v0, p1
    move-object v1, p2
    move-object v2, p3
    move v3, p4
    move v4, p5
    move-object v5, p0
  .line 47
    invoke-static/range { v0 .. v7 }, Lcom/mycompany/app/web/TabListLongPressGate;->arm(Landroid/view/View;Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;Landroidx/recyclerview/widget/ItemTouchHelper;IZLcom/mycompany/app/dialog/DialogTabMain;Lcom/mycompany/app/dialog/DialogTabMini;Lcom/mycompany/app/quick/TabSubView;)V
    return-void
.end method

.method public static armMini(Lcom/mycompany/app/dialog/DialogTabMini;Landroid/view/View;Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;Landroidx/recyclerview/widget/ItemTouchHelper;IZ)V
  .registers 14
    const/4 v5, 0
    const/4 v7, 0
    move-object v0, p1
    move-object v1, p2
    move-object v2, p3
    move v3, p4
    move v4, p5
    move-object v6, p0
  .line 57
    invoke-static/range { v0 .. v7 }, Lcom/mycompany/app/web/TabListLongPressGate;->arm(Landroid/view/View;Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;Landroidx/recyclerview/widget/ItemTouchHelper;IZLcom/mycompany/app/dialog/DialogTabMain;Lcom/mycompany/app/dialog/DialogTabMini;Lcom/mycompany/app/quick/TabSubView;)V
    return-void
.end method

.method public static armSub(Lcom/mycompany/app/quick/TabSubView;Landroid/view/View;Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;Landroidx/recyclerview/widget/ItemTouchHelper;I)V
  .registers 13
    const/4 v5, 0
    const/4 v6, 0
    const/4 v4, 0
    move-object v0, p1
    move-object v1, p2
    move-object v2, p3
    move v3, p4
    move-object v7, p0
  .line 66
    invoke-static/range { v0 .. v7 }, Lcom/mycompany/app/web/TabListLongPressGate;->arm(Landroid/view/View;Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;Landroidx/recyclerview/widget/ItemTouchHelper;IZLcom/mycompany/app/dialog/DialogTabMain;Lcom/mycompany/app/dialog/DialogTabMini;Lcom/mycompany/app/quick/TabSubView;)V
    return-void
.end method

.method public static cancel()V
  .registers 2
  .line 37
    sget-object v0, Lcom/mycompany/app/web/TabListLongPressGate;->INSTANCE:Lcom/mycompany/app/web/TabListLongPressGate;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Lcom/mycompany/app/web/TabListLongPressGate;->clear(Z)V
    return-void
.end method

.method private clear(Z)V
  .registers 4
  .line 194
    iget-object v0, p0, Lcom/mycompany/app/web/TabListLongPressGate;->anchor:Landroid/view/View;
    const/4 v1, 0
  .line 195
    iput-boolean v1, p0, Lcom/mycompany/app/web/TabListLongPressGate;->armed:Z
  .line 196
    iput-boolean v1, p0, Lcom/mycompany/app/web/TabListLongPressGate;->originSet:Z
  .line 197
    invoke-direct { p0 }, Lcom/mycompany/app/web/TabListLongPressGate;->clearRefs()V
    if-eqz v0, :L0
  .line 199
    invoke-static { v0 }, Lcom/mycompany/app/web/TabListLongPressGate;->clearListener(Landroid/view/View;)V
    if-eqz p1, :L0
  .line 201
    invoke-static { v0 }, Lcom/mycompany/app/web/TabListLongPressGate;->allowIntercept(Landroid/view/View;)V
  :L0
    return-void
.end method

.method private static clearListener(Landroid/view/View;)V
  .registers 2
    if-eqz p0, :L0
    const/4 v0, 0
  .line 208
    invoke-virtual { p0, v0 }, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
  :L0
    return-void
.end method

.method private clearRefs()V
  .registers 2
    const/4 v0, 0
  .line 185
    iput-object v0, p0, Lcom/mycompany/app/web/TabListLongPressGate;->anchor:Landroid/view/View;
  .line 186
    iput-object v0, p0, Lcom/mycompany/app/web/TabListLongPressGate;->holder:Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;
  .line 187
    iput-object v0, p0, Lcom/mycompany/app/web/TabListLongPressGate;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;
  .line 188
    iput-object v0, p0, Lcom/mycompany/app/web/TabListLongPressGate;->dialogMain:Lcom/mycompany/app/dialog/DialogTabMain;
  .line 189
    iput-object v0, p0, Lcom/mycompany/app/web/TabListLongPressGate;->dialogMini:Lcom/mycompany/app/dialog/DialogTabMini;
  .line 190
    iput-object v0, p0, Lcom/mycompany/app/web/TabListLongPressGate;->tabSub:Lcom/mycompany/app/quick/TabSubView;
    return-void
.end method

.method private enterSelection(Landroid/view/View;)V
  .registers 8
  .line 166
    iget-object v0, p0, Lcom/mycompany/app/web/TabListLongPressGate;->dialogMain:Lcom/mycompany/app/dialog/DialogTabMain;
  .line 167
    iget-object v1, p0, Lcom/mycompany/app/web/TabListLongPressGate;->dialogMini:Lcom/mycompany/app/dialog/DialogTabMini;
  .line 168
    iget-object v2, p0, Lcom/mycompany/app/web/TabListLongPressGate;->tabSub:Lcom/mycompany/app/quick/TabSubView;
  .line 169
    iget v3, p0, Lcom/mycompany/app/web/TabListLongPressGate;->index:I
  .line 170
    iget-boolean v4, p0, Lcom/mycompany/app/web/TabListLongPressGate;->album:Z
    const/4 v5, 0
  .line 171
    iput-boolean v5, p0, Lcom/mycompany/app/web/TabListLongPressGate;->armed:Z
  .line 172
    invoke-static { p1 }, Lcom/mycompany/app/web/TabListLongPressGate;->clearListener(Landroid/view/View;)V
  .line 173
    invoke-static { p1 }, Lcom/mycompany/app/web/TabListLongPressGate;->allowIntercept(Landroid/view/View;)V
  .line 174
    invoke-direct { p0 }, Lcom/mycompany/app/web/TabListLongPressGate;->clearRefs()V
    const/4 p1, 1
    if-eqz v0, :L0
  .line 176
    invoke-virtual { v0, v3, p1, v4 }, Lcom/mycompany/app/dialog/DialogTabMain;->N(IZZ)V
    goto :L2
  :L0
    if-eqz v1, :L1
  .line 178
    invoke-virtual { v1, v3, p1, v4 }, Lcom/mycompany/app/dialog/DialogTabMini;->a0(IZZ)V
    goto :L2
  :L1
    if-eqz v2, :L2
  .line 180
    invoke-virtual { v2, v3, p1 }, Lcom/mycompany/app/quick/TabSubView;->m(IZ)V
  :L2
    return-void
.end method

.method private startDrag(Landroid/view/View;)V
  .registers 5
  .line 154
    iget-object v0, p0, Lcom/mycompany/app/web/TabListLongPressGate;->touchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;
  .line 155
    iget-object v1, p0, Lcom/mycompany/app/web/TabListLongPressGate;->holder:Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;
    const/4 v2, 0
  .line 156
    iput-boolean v2, p0, Lcom/mycompany/app/web/TabListLongPressGate;->armed:Z
  .line 157
    invoke-static { p1 }, Lcom/mycompany/app/web/TabListLongPressGate;->clearListener(Landroid/view/View;)V
  .line 158
    invoke-static { p1 }, Lcom/mycompany/app/web/TabListLongPressGate;->allowIntercept(Landroid/view/View;)V
  .line 159
    invoke-direct { p0 }, Lcom/mycompany/app/web/TabListLongPressGate;->clearRefs()V
    if-eqz v0, :L0
    if-eqz v1, :L0
  .line 161
    invoke-virtual { v0, v1 }, Landroidx/recyclerview/widget/ItemTouchHelper;->t(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
  :L0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 7
  .line 118
    iget-boolean v0, p0, Lcom/mycompany/app/web/TabListLongPressGate;->armed:Z
    const/4 v1, 0
    if-eqz v0, :L8
    iget-object v0, p0, Lcom/mycompany/app/web/TabListLongPressGate;->anchor:Landroid/view/View;
    if-eq p1, v0, :L0
    goto :L8
  :L0
  .line 121
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    const/4 v2, 2
    const/4 v3, 1
    if-ne v0, v2, :L3
  .line 123
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getRawX()F
    move-result v0
  .line 124
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getRawY()F
    move-result p2
  .line 125
    iget-boolean v1, p0, Lcom/mycompany/app/web/TabListLongPressGate;->originSet:Z
    if-nez v1, :L1
  .line 126
    iput v0, p0, Lcom/mycompany/app/web/TabListLongPressGate;->downRawX:F
  .line 127
    iput p2, p0, Lcom/mycompany/app/web/TabListLongPressGate;->downRawY:F
  .line 128
    iput-boolean v3, p0, Lcom/mycompany/app/web/TabListLongPressGate;->originSet:Z
    return v3
  :L1
  .line 131
    iget v1, p0, Lcom/mycompany/app/web/TabListLongPressGate;->downRawX:F
    sub-float/2addr v0, v1
  .line 132
    iget v1, p0, Lcom/mycompany/app/web/TabListLongPressGate;->downRawY:F
    sub-float/2addr p2, v1
    mul-float v0, v0, v0
    mul-float p2, p2, p2
    add-float/2addr v0, p2
  .line 133
    iget p2, p0, Lcom/mycompany/app/web/TabListLongPressGate;->touchSlop:I
    mul-int p2, p2, p2
    int-to-float p2, p2
    cmpl-float p2, v0, p2
    if-lez p2, :L2
  .line 134
    invoke-direct { p0, p1 }, Lcom/mycompany/app/web/TabListLongPressGate;->startDrag(Landroid/view/View;)V
  :L2
    return v3
  :L3
    if-ne v0, v3, :L6
  .line 139
    iget-boolean p2, p0, Lcom/mycompany/app/web/TabListLongPressGate;->armed:Z
    if-eqz p2, :L4
  .line 140
    invoke-direct { p0, p1 }, Lcom/mycompany/app/web/TabListLongPressGate;->enterSelection(Landroid/view/View;)V
    goto :L5
  :L4
  .line 142
    invoke-direct { p0, v1 }, Lcom/mycompany/app/web/TabListLongPressGate;->clear(Z)V
  :L5
    return v3
  :L6
    const/4 p1, 3
    if-ne v0, p1, :L7
  .line 147
    invoke-direct { p0, v3 }, Lcom/mycompany/app/web/TabListLongPressGate;->clear(Z)V
  :L7
    return v3
  :L8
    return v1
.end method
