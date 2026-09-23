.class Lcom/mycompany/app/view/MyAdFrame$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyAdFrame;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyAdFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyAdFrame$1;->c:Lcom/mycompany/app/view/MyAdFrame;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyAdFrame$1;->c:Lcom/mycompany/app/view/MyAdFrame;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyAdFrame;->g:Lcom/mycompany/app/view/MyAdNative;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyAdFrame;->h:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/view/MyAdFrame;->g:Lcom/mycompany/app/view/MyAdNative;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    .line 15
    const/4 v4, -0x1

    .line 16
    const/4 v5, -0x2

    .line 17
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const/16 v2, 0x10

    .line 23
    .line 24
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    :goto_0
    return-void
.end method
