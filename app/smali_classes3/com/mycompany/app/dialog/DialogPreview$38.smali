.class Lcom/mycompany/app/dialog/DialogPreview$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$38;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview$38;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->h1:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyFadeFrame;->g()V

    .line 11
    .line 12
    .line 13
    if-gez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iput v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->i1:I

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->k0:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$39;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$39;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v3, 0x64

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
