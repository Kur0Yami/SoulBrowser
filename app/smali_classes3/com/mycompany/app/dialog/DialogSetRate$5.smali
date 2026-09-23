.class Lcom/mycompany/app/dialog/DialogSetRate$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetRate;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetRate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetRate$5;->a:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetRate$5;->a:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/mycompany/app/web/WebVideoFull;->o1:[F

    .line 9
    .line 10
    aget p1, v1, p1

    .line 11
    .line 12
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 13
    .line 14
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->W:F

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->a0:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v1, p1}, Lcom/mycompany/app/pref/PrefSet;->e(Landroid/content/Context;F)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 28
    .line 29
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetRate;->dismiss()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
