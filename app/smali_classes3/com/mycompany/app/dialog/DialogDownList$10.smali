.class Lcom/mycompany/app/dialog/DialogDownList$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$10;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList$10;->c:Lcom/mycompany/app/dialog/DialogDownList;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownList;->s0:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownList;->z0:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownList;->z0:Ljava/lang/String;

    .line 23
    .line 24
    const/16 v1, 0x20

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    if-lez v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ge v1, v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_3
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownList;->s0:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownList;->s0:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    const/16 v1, 0x8

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 78
    .line 79
    const v1, -0x252526

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 86
    .line 87
    const v1, -0xe19938

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
