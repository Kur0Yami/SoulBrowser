.class Lcom/mycompany/app/view/MyClipView$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyClipView$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyClipView$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyClipView$1$1$1;->c:Lcom/mycompany/app/view/MyClipView$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView$1$1$1;->c:Lcom/mycompany/app/view/MyClipView$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyClipView$1$1;->c:Lcom/mycompany/app/view/MyClipView$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/view/MyClipView$1;->c:Lcom/mycompany/app/view/MyClipView;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/view/MyClipView;->s:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/view/MyClipView$1;->c:Lcom/mycompany/app/view/MyClipView;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/mycompany/app/view/MyClipView;->c:Landroid/content/Context;

    .line 18
    .line 19
    sget v2, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 20
    .line 21
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/view/MyClipView$1;->c:Lcom/mycompany/app/view/MyClipView;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/mycompany/app/view/MyClipView;->l:Lcom/mycompany/app/view/MyClipView$MyClipListener;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v1, v1, Lcom/mycompany/app/view/MyClipView;->s:Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v2, v1}, Lcom/mycompany/app/view/MyClipView$MyClipListener;->i(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/view/MyClipView$1;->c:Lcom/mycompany/app/view/MyClipView;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyClipView;->v:Z

    .line 40
    .line 41
    return-void
.end method
