.class Lcom/mycompany/app/image/ImageViewPageEffect$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageEffect;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$35;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$35;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->L0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 12

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    move p2, p1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 8
    .line 9
    if-ne p2, v0, :cond_1

    .line 10
    .line 11
    return p1

    .line 12
    :cond_1
    sput-boolean p2, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$35;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    const-string v3, "mReverse"

    .line 20
    .line 21
    invoke-static {v2, v1, v3, p2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->f1()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/mycompany/app/image/ImageViewPageEffect;->o1(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->V:Lcom/mycompany/app/image/ImageViewControl;

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget-boolean v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 35
    .line 36
    iget v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 37
    .line 38
    iget v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 39
    .line 40
    iget-object v8, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 41
    .line 42
    iget v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 43
    .line 44
    iget v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 45
    .line 46
    iget v11, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 47
    .line 48
    invoke-virtual/range {v4 .. v11}, Lcom/mycompany/app/image/ImageViewControl;->u(ZIILcom/mycompany/app/compress/Compress;III)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->Y0()V

    .line 52
    .line 53
    .line 54
    return p1
.end method
