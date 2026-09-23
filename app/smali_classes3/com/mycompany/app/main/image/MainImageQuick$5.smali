.class Lcom/mycompany/app/main/image/MainImageQuick$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$5;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$5;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/image/MainImageQuick;->D0(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    new-instance v2, Lcom/mycompany/app/main/image/MainImageQuick$6;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageQuick$6;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 30
    .line 31
    new-instance v2, Lcom/mycompany/app/main/image/MainImageQuick$7;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageQuick$7;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance v2, Lcom/mycompany/app/main/image/MainImageQuick$8;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageQuick$8;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method
