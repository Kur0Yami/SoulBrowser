.class Lcom/mycompany/app/view/MyEditAuto$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyEditAuto;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyEditAuto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto$4;->c:Lcom/mycompany/app/view/MyEditAuto;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto$4;->c:Lcom/mycompany/app/view/MyEditAuto;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyEditAuto;->J:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/view/MyEditAuto;->K:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/view/MyEditAuto;->J:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/mycompany/app/view/MyEditAuto;->F:Ljava/lang/String;

    .line 11
    .line 12
    iget-boolean v4, v0, Lcom/mycompany/app/view/MyEditAuto;->k:Z

    .line 13
    .line 14
    if-eqz v4, :cond_3

    .line 15
    .line 16
    iget v4, v0, Lcom/mycompany/app/view/MyEditAuto;->G:I

    .line 17
    .line 18
    if-ne v4, v2, :cond_3

    .line 19
    .line 20
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    if-gez v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iput-object v1, v0, Lcom/mycompany/app/view/MyEditAuto;->L:Ljava/lang/String;

    .line 41
    .line 42
    iput v2, v0, Lcom/mycompany/app/view/MyEditAuto;->M:I

    .line 43
    .line 44
    new-instance v1, Lcom/mycompany/app/view/MyEditAuto$5;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyEditAuto$5;-><init>(Lcom/mycompany/app/view/MyEditAuto;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method
