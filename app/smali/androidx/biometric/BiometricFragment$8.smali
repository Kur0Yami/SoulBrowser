.class Landroidx/biometric/BiometricFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/CharSequence;

.field public final synthetic g:Landroidx/biometric/BiometricFragment;


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/biometric/BiometricFragment$8;->g:Landroidx/biometric/BiometricFragment;

    .line 5
    .line 6
    iput p2, p0, Landroidx/biometric/BiometricFragment$8;->c:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/biometric/BiometricFragment$8;->f:Ljava/lang/CharSequence;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/biometric/BiometricFragment$8;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/biometric/BiometricFragment$8;->f:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/biometric/BiometricFragment$8;->g:Landroidx/biometric/BiometricFragment;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Landroidx/biometric/BiometricFragment;->k(ILjava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
