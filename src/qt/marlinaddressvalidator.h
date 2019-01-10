// Copyright (c) 2011-2014 The Bitcoin Core developers
// Copyright (c) 2017 The Marlin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef MARLIN_QT_MARLINADDRESSVALIDATOR_H
#define MARLIN_QT_MARLINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class MarlinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit MarlinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Marlin address widget validator, checks for a valid marlin address.
 */
class MarlinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit MarlinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // MARLIN_QT_MARLINADDRESSVALIDATOR_H
